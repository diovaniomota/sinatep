const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

// Define a função do Firebase, que será chamada por um pedido HTTP
exports.criarPDF = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    // Verifica a autenticação do contexto; se o usuário não estiver autenticado, retorna
    if (!context.auth.uid) return;

    // Obtém o ID do contrato dos dados enviados
    const { contratoId } = data;

    try {
      // Obtém uma referência ao contrato no Firestore
      const contratoRef = admin
        .firestore()
        .collection("contrato")
        .doc(contratoId);

      // Obtém o documento do contrato
      const contratoDoc = await contratoRef.get();

      // Verifica se o contrato existe; se não existir, retorna um erro HTTP
      if (!contratoDoc.exists) {
        throw new functions.https.HttpsError(
          "not-found",
          "Contrato não encontrado.",
        );
      }

      // Obtém informações do documento do contrato no Firestore
      const info = contratoDoc.data();

      // Obtém um referência ao bucket de armazenamento do Firebase
      const bucket = admin.storage().bucket();

      // Nome do modelo de PDF
      const PDF_MODELO_NOME =
        info.opcaoCurso === "3"
          ? "Contrato_2024 Jur."
          : "contratoVeterinarioAbril2024";

      // Define o caminho do PDF base/modelo
      const pdfBasePath = `contrato_modelo/${PDF_MODELO_NOME}.pdf`;

      // Verifica se o arquivo do PDF base existe no bucket de armazenamento
      const [exists] = await bucket.file(pdfBasePath).exists();

      // Se o arquivo do PDF base não existir, retorna um erro HTTP
      if (!exists) {
        throw new functions.https.HttpsError(
          "not-found",
          "Arquivo base não existe.",
        );
      }

      // Define o caminho de armazenamento do PDF do contrato
      const pdfStoragePath = `contratos/${contratoId}.pdf`;

      // Obtém um objeto que representa o PDF do contrato no armazenamento
      const pdfContrato = bucket.file(pdfStoragePath);

      // Copia o PDF base/modelo para o caminho do PDF do contrato
      await bucket.file(pdfBasePath).copy(pdfContrato);

      // Obtém um token de acesso para o arquivo
      const [signedUrl] = await pdfContrato.getSignedUrl({
        action: "read",
        expires: new Date("01-01-2500"),
      });

      // Atualiza o documento do contrato no Firestore com o link para o PDF e o token de acesso
      await contratoRef.update({
        pdf: `gs://${bucket.name}/${pdfStoragePath}`,
        signedUrl,
      });
    } catch (error) {
      // Se ocorrer um erro, retorna um erro HTTP interno
      console.warn("Stack", error.stack);
      throw new functions.https.HttpsError("internal", error.message);
    }
  });
