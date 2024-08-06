const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions
  .region("southamerica-east1")
  .auth.user()
  .onDelete(async (user) => {
    let firestore = admin.firestore();
    let userRef = firestore.doc("user/" + user.uid);
    await firestore.collection("user").doc(user.uid).delete();
  });
