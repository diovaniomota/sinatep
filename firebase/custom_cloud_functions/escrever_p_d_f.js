const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

// Importar a biblioteca PDF-lib para manipulação de PDFs
const { PDFDocument } = require("pdf-lib");

exports.escreverPDF = functions
  .region("us-central1")
  .https.onCall(async (data, context) => {
    if (!context.auth.uid) return;

    const { contratoId } = data;

    try {
      const contratoRef = admin
        .firestore()
        .collection("contrato")
        .doc(contratoId);
      const contratoDoc = await contratoRef.get();

      if (!contratoDoc.exists) {
        throw new functions.https.HttpsError(
          "not-found",
          "Contrato não encontrado.",
        );
      }

      const bucket = admin.storage().bucket();
      const pdfContrato = bucket.file(`contratos/${contratoId}.pdf`);

      const [exists] = await pdfContrato.exists();
      if (!exists) {
        throw new functions.https.HttpsError(
          "not-found",
          "Arquivo não existe.",
        );
      }

      const info = contratoDoc.data();

      // Baixa o conteúdo do PDF do contrato existente
      const [existingPdfBytes] = await pdfContrato.download();

      // Carrega o PDF em um objeto PDFDocument
      const pdfDoc = await PDFDocument.load(existingPdfBytes);

      // Escrever as informações no PDF do contrato
      escreverNoPDF(pdfDoc, info);

      // Salva as modificações no PDF
      const modifiedPdfBytes = await pdfDoc.save();
      await pdfContrato.save(modifiedPdfBytes);
    } catch (error) {
      // Se ocorrer um erro, retorne um erro HTTP interno
      console.warn("Stack", error.stack);
      throw new functions.https.HttpsError("internal", error.message);
    }
  });

function escreverNoPDF(pdfDoc, info) {
  // Obtém as páginas do PDF
  const [firstPage, secondPage] = pdfDoc.getPages();
  const size = 10;

  // 1. CONTRATANTE
  firstPage.drawText(`${info.contratante}`, { x: 122, y: 762, size });
  firstPage.drawText(`${info.documento}`, { x: 60, y: 746, size });
  firstPage.drawText(`${info.rg}`, { x: 327, y: 746, size });

  if (info.dn) {
    const [day, month, year] = info.dn.split("/");
    if (day) firstPage.drawText(`${day}`, { x: 491, y: 746, size });
    if (month) firstPage.drawText(`${month}`, { x: 516, y: 746, size });
    if (year) firstPage.drawText(`${year}`, { x: 540, y: 746, size });
  }

  firstPage.drawText(`${info.filiacao}`, { x: 74, y: 734, size });
  firstPage.drawText(`${info.naturalidade}`, { x: 442, y: 735, size });

  if (info.sexo === "M") {
    firstPage.drawText("X", { x: 108.5, y: 721, size }); // M
  } else if (info.sexo === "F") {
    firstPage.drawText("X", { x: 167.5, y: 721, size }); // F
  }

  firstPage.drawText(`${info.endereco}`, { x: 176, y: 711, size });
  firstPage.drawText(`${info.numero}`, { x: 535, y: 711, size });
  firstPage.drawText(`${info.bairro}`, { x: 68, y: 699, size });
  firstPage.drawText(`${info.cidade}`, { x: 76, y: 687, size });
  firstPage.drawText(`${info.cep}`, { x: 360, y: 687, size });
  firstPage.drawText(`${info.uf}`, { x: 496, y: 687, size });
  firstPage.drawText(`${info.telefones}`, { x: 82, y: 675, size });

  // 2. USUARIO
  firstPage.drawText(`${info.aluno}`, { x: 106, y: 640, size });

  if (info.alunoDN) {
    const [day, month, year] = info.alunoDN.split("/");
    if (day) firstPage.drawText(`${day}`, { x: 476, y: 640, size });
    if (month) firstPage.drawText(`${month}`, { x: 503, y: 640, size });
    if (year) firstPage.drawText(`${year}`, { x: 530, y: 640, size });
  }

  firstPage.drawText(`${info.alunoDocumento}`, { x: 90, y: 626, size });
  firstPage.drawText(`${info.alunoNaturalidade}`, { x: 468, y: 626, size });
  firstPage.drawText(`${info.alunoTelefone}`, { x: 76, y: 614, size });

  firstPage.drawText(`${info.opcaoCurso}`, { x: 130, y: 578, size });

  if (info.opcaoCurso === "4") {
    firstPage.drawText(`${info.outro}`, { x: 320, y: 558, size });
  }

  firstPage.drawText(`${info.indicacao}`, { x: 98, y: 538, size });

  // I. DAS DISPOSIÇÕES INICIAIS
  if (info.horas) {
    firstPage.drawText(`${info.horas} horas`, { x: 40, y: 434, size });
  }

  if (info.inicioPrevisto) {
    const [day, month] = info.primeiraParcela.split("/");
    if (day) firstPage.drawText(`${day}`, { x: 270, y: 434, size });
    if (month) firstPage.drawText(`${month}`, { x: 298, y: 434, size });
  }

  firstPage.drawText(`${info.contratada}`, { x: 460, y: 434, size });

  // PAGAMENTO
  if (info.opcaoCurso === "3") {
    switch (info.pagamento) {
      case "18":
        firstPage.drawText("X", { x: 74.5, y: 370, size }); // 18
        break;
      case "12":
        firstPage.drawText("X", { x: 74.5, y: 354, size }); // 12
        break;
      case "0":
        firstPage.drawText("X", { x: 74.5, y: 339, size }); // 0
        break;
      case "8":
        firstPage.drawText("X", { x: 291, y: 370, size }); // 8
        break;
      case "5":
        firstPage.drawText("X", { x: 291, y: 354, size }); // 5
        break;
      case "3":
        firstPage.drawText("X", { x: 291, y: 339, size }); // 3
        break;
    }
  } else {
    switch (info.pagamento) {
      case "36":
        firstPage.drawText("X", { x: 74.5, y: 370, size }); // 36
        break;
      case "24":
        firstPage.drawText("X", { x: 74.5, y: 354, size }); // 24
        break;
      case "18":
        firstPage.drawText("X", { x: 74.5, y: 339, size }); // 18
        break;
      case "14":
        firstPage.drawText("X", { x: 291, y: 370, size }); // 14
        break;
      case "8":
        firstPage.drawText("X", { x: 291, y: 354, size }); // 8
        break;
      case "3":
        firstPage.drawText("X", { x: 291, y: 339, size }); // 3
        break;
      case "12":
        firstPage.drawText("X", { x: 291, y: 322.5, size }); // 12
        break;
    }
  }

  if (info.primeiraParcela) {
    const [day, month, year] = info.primeiraParcela.split("/");
    if (day) firstPage.drawText(`${day}`, { x: 176, y: 300, size });
    if (month) firstPage.drawText(`${month}`, { x: 204, y: 300, size });
    if (year) firstPage.drawText(`${year}`, { x: 232, y: 300, size });
  }

  firstPage.drawText(`${info.descontoRS}`, { x: 290, y: 282, size });
  // Por extenso (x: 340)

  // GERAÇÂO DO CONTRATO
  const [day, month, year] = info.criado_str.split("/");
  const monthName = obterNomeMesPorExtenso(month);

  firstPage.drawText(`${day}`, { x: 102, y: 212, size });
  firstPage.drawText(`${monthName}`, { x: 150, y: 212, size });
  firstPage.drawText(`${year}`, { x: 255, y: 212, size });

  secondPage.drawText(`${day}`, { x: 90, y: 145, size });
  secondPage.drawText(`${monthName}`, { x: 128, y: 145, size });
  secondPage.drawText(`${year}`, { x: 205, y: 145, size });
}

// Função para obter o nome do mês por extenso
function obterNomeMesPorExtenso(numeroMes) {
  const meses = [
    "Janeiro",
    "Fevereiro",
    "Março",
    "Abril",
    "Maio",
    "Junho",
    "Julho",
    "Agosto",
    "Setembro",
    "Outubro",
    "Novembro",
    "Dezembro",
  ];
  return meses[parseInt(numeroMes, 10) - 1];
}
