import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ass_testemunha_page_widget.dart' show AssTestemunhaPageWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class AssTestemunhaPageModel extends FlutterFlowModel<AssTestemunhaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AssTestemunha widget.
  SignatureController? assTestemunhaController;
  String uploadedSignatureUrl = '';
  // Stores action output result for [Cloud Function - assinarContrato] action in Button widget.
  AssinarContratoCloudFunctionCallResponse? cloudFunction;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    assTestemunhaController?.dispose();
  }
}
