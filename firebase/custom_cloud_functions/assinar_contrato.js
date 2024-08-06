const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

const { PDFDocument, degrees } = require("pdf-lib");

exports.assinarContrato = functions
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

      const [existingPdfBytes] = await pdfContrato.download();

      const pdfDoc = await PDFDocument.load(existingPdfBytes);

      await assinarNoPDF(pdfDoc, info);

      const modifiedPdfBytes = await pdfDoc.save();
      await pdfContrato.save(modifiedPdfBytes);
    } catch (error) {
      // Se ocorrer um erro, retorne um erro HTTP interno
      console.warn("Stack", error.stack);
      throw new functions.https.HttpsError("internal", error.message);
    }
  });

async function assinarNoPDF(pdfDoc, info) {
  const [firstPage, secondPage] = pdfDoc.getPages();

  if (info.assinatura) {
    // Baixa a imagem da URL
    const img = await fetch(info.assinatura);
    const buffer = await img.arrayBuffer();

    // Adiciona a imagem à página do PDF
    const image = await pdfDoc.embedPng(buffer);

    firstPage.drawImage(image, {
      x: 430 + (image.height * 0.3) / 2,
      y: 170,
      width: image.width * 0.3,
      height: image.height * 0.3,
      rotate: degrees(90),
    });

    secondPage.drawImage(image, {
      x: 395 + (image.height * 0.3) / 2,
      y: 110,
      width: image.width * 0.3,
      height: image.height * 0.3,
      rotate: degrees(90),
    });
  }

  if (info.assTestemunha) {
    const img = await fetch(info.assTestemunha);
    const buffer = await img.arrayBuffer();
    const image = await pdfDoc.embedPng(buffer);

    firstPage.drawImage(image, {
      x: 430 + (image.height * 0.3) / 2,
      y: 130,
      width: image.width * 0.3,
      height: image.height * 0.3,
      rotate: degrees(90),
    });

    secondPage.drawImage(image, {
      x: 395 + (image.height * 0.3) / 2,
      y: 80,
      width: image.width * 0.3,
      height: image.height * 0.3,
      rotate: degrees(90),
    });
  }
}
