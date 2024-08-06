import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signature/signature.dart';
import 'assinatura_page_model.dart';
export 'assinatura_page_model.dart';

class AssinaturaPageWidget extends StatefulWidget {
  const AssinaturaPageWidget({
    super.key,
    required this.contrato,
  });

  final ContratoRecord? contrato;

  @override
  State<AssinaturaPageWidget> createState() => _AssinaturaPageWidgetState();
}

class _AssinaturaPageWidgetState extends State<AssinaturaPageWidget> {
  late AssinaturaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssinaturaPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: FaIcon(
              FontAwesomeIcons.angleLeft,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Design_sem_nome_(37).png',
                width: 200.0,
                height: 50.0,
                fit: BoxFit.cover,
                alignment: const Alignment(0.0, 0.0),
              ),
            ),
          ),
          actions: [
            Visibility(
              visible: !widget.contrato!.hasAssinatura(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: FaIcon(
                      FontAwesomeIcons.broom,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        _model.assinaturaController?.clear();
                      });
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'LIMPO',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          duration: const Duration(milliseconds: 1000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            decoration: const BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Wrap(
                      spacing: 0.0,
                      runSpacing: 0.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Assinatura',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 1.0,
                              child: ClipRRect(
                                child: Container(
                                  width: 300.0,
                                  height: 546.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      if (widget.contrato?.hasAssinatura() ??
                                          false) {
                                        return Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: CachedNetworkImage(
                                            fadeInDuration:
                                                const Duration(milliseconds: 500),
                                            fadeOutDuration:
                                                const Duration(milliseconds: 500),
                                            imageUrl:
                                                widget.contrato!.assinatura,
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.contain,
                                          ),
                                        );
                                      } else {
                                        return Stack(
                                          children: [
                                            ClipRect(
                                              child: Signature(
                                                controller: _model
                                                        .assinaturaController ??=
                                                    SignatureController(
                                                  penStrokeWidth: 2.0,
                                                  penColor: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  exportBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                height: double.infinity,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Container(
                                                width: 2.0,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (!widget.contrato!.hasAssinatura())
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var shouldSetState = false;
                                  final signatureImage = await _model
                                      .assinaturaController!
                                      .toPngBytes();
                                  if (signatureImage == null) {
                                    showUploadMessage(
                                      context,
                                      'Signature is empty.',
                                    );
                                    return;
                                  }
                                  showUploadMessage(
                                    context,
                                    'Uploading signature...',
                                    showLoading: true,
                                  );
                                  final downloadUrl = (await uploadData(
                                      getSignatureStoragePath(),
                                      signatureImage));

                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  if (downloadUrl != null) {
                                    setState(() => _model.uploadedSignatureUrl =
                                        downloadUrl);
                                    showUploadMessage(
                                      context,
                                      'Success!',
                                    );
                                  } else {
                                    showUploadMessage(
                                      context,
                                      'Failed to upload signature.',
                                    );
                                    return;
                                  }

                                  await widget.contrato!.reference
                                      .update(createContratoRecordData(
                                    assinatura: _model.uploadedSignatureUrl,
                                    assinadoEm: getCurrentTimestamp,
                                  ));
                                  try {
                                    final result =
                                        await FirebaseFunctions.instanceFor(
                                                region: 'us-central1')
                                            .httpsCallable('assinarContrato')
                                            .call({
                                      "contratoId":
                                          widget.contrato!.reference.id,
                                    });
                                    _model.cloudFunction =
                                        AssinarContratoCloudFunctionCallResponse(
                                      succeeded: true,
                                    );
                                  } on FirebaseFunctionsException catch (error) {
                                    _model.cloudFunction =
                                        AssinarContratoCloudFunctionCallResponse(
                                      errorCode: error.code,
                                      succeeded: false,
                                    );
                                  }

                                  shouldSetState = true;
                                  if (_model.cloudFunction!.succeeded!) {
                                    context.safePop();
                                    context.safePop();
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Ocorreu um erro ao assinar contrato.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        duration: const Duration(milliseconds: 2000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                      ),
                                    );
                                    if (shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (shouldSetState) setState(() {});
                                },
                                text: 'Confirmar',
                                options: FFButtonOptions(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 2.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ].divide(const SizedBox(height: 24.0)).around(const SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
