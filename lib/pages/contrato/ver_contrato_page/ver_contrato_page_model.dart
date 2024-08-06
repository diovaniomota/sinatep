import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ver_contrato_page_widget.dart' show VerContratoPageWidget;
import 'package:flutter/material.dart';

class VerContratoPageModel extends FlutterFlowModel<VerContratoPageWidget> {
  ///  Local state fields for this page.

  String? pdf;

  bool confirmarDeletar = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Cloud Function - atualizarToken] action in VerContratoPage widget.
  AtualizarTokenCloudFunctionCallResponse? cloudFunction;
  // Stores action output result for [Cloud Function - deletarPDF] action in Button widget.
  DeletarPDFCloudFunctionCallResponse? cloudFunctionzyl;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
