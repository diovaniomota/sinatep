const admin = require("firebase-admin/app");
admin.initializeApp();

const criarPDF = require("./criar_p_d_f.js");
exports.criarPDF = criarPDF.criarPDF;
const gerenciarUsuario = require("./gerenciar_usuario.js");
exports.gerenciarUsuario = gerenciarUsuario.gerenciarUsuario;
const assinarContrato = require("./assinar_contrato.js");
exports.assinarContrato = assinarContrato.assinarContrato;
const atualizarToken = require("./atualizar_token.js");
exports.atualizarToken = atualizarToken.atualizarToken;
const escreverPDF = require("./escrever_p_d_f.js");
exports.escreverPDF = escreverPDF.escreverPDF;
const deletarPDF = require("./deletar_p_d_f.js");
exports.deletarPDF = deletarPDF.deletarPDF;
