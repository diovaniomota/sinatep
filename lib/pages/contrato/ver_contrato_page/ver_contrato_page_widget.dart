import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'ver_contrato_page_model.dart';
export 'ver_contrato_page_model.dart';

class VerContratoPageWidget extends StatefulWidget {
  const VerContratoPageWidget({
    super.key,
    required this.contrato,
  });

  final ContratoRecord? contrato;

  @override
  State<VerContratoPageWidget> createState() => _VerContratoPageWidgetState();
}

class _VerContratoPageWidgetState extends State<VerContratoPageWidget> {
  late VerContratoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerContratoPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!((widget.contrato?.signedEm == null) ||
          (widget.contrato!.signedEm! <= getCurrentTimestamp))) {
        _model.pdf = widget.contrato?.signedUrl;
        setState(() {});
        return;
      }
      try {
        final result =
            await FirebaseFunctions.instanceFor(region: 'us-central1')
                .httpsCallable('atualizarToken')
                .call({
          "contratoId": widget.contrato!.reference.id,
        });
        _model.cloudFunction = AtualizarTokenCloudFunctionCallResponse(
          data: result.data,
          succeeded: true,
          resultAsString: result.data.toString(),
          jsonBody: result.data,
        );
      } on FirebaseFunctionsException catch (error) {
        _model.cloudFunction = AtualizarTokenCloudFunctionCallResponse(
          errorCode: error.code,
          succeeded: false,
        );
      }

      if (_model.cloudFunction!.succeeded!) {
        await widget.contrato!.reference.update(createContratoRecordData(
          signedEm: functions.twoDaysLater(),
        ));
        _model.pdf = _model.cloudFunction?.data;
        setState(() {});
      } else {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Ocorreu um erro ao gerar token do PDF.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).error,
                    letterSpacing: 0.0,
                  ),
            ),
            duration: const Duration(milliseconds: 2000),
            backgroundColor: FlutterFlowTheme.of(context).alternate,
          ),
        );
        return;
      }
    });

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
              visible: _model.pdf != null && _model.pdf != '',
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Builder(
                  builder: (context) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: FaIcon(
                        FontAwesomeIcons.share,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await Share.share(
                          _model.pdf!,
                          sharePositionOrigin: getWidgetBoundingBox(context),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Contrato',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                  borderRadius: BorderRadius.circular(9.0),
                  shape: BoxShape.rectangle,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    if (_model.pdf != null && _model.pdf != '') {
                      return FlutterFlowPdfViewer(
                        networkPath: _model.pdf!,
                        width: double.infinity,
                        height: double.infinity,
                        horizontalScroll: true,
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(
                          'Sem PDF',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 16.0),
                child: Text(
                  'Deslize para o lado para acessar a próxima página.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  }
                  context.pushNamed(
                    'RegistrarContratoPage',
                    queryParameters: {
                      'contrato': serializeParam(
                        widget.contrato,
                        ParamType.Document,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      'contrato': widget.contrato,
                    },
                  );
                },
                text: 'Editar',
                options: FFButtonOptions(
                  width: 250.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
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
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'AssinaturaPage',
                    queryParameters: {
                      'contrato': serializeParam(
                        widget.contrato,
                        ParamType.Document,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      'contrato': widget.contrato,
                    },
                  );
                },
                text: 'Assinar',
                options: FFButtonOptions(
                  width: 250.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
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
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'AssTestemunhaPage',
                    queryParameters: {
                      'contrato': serializeParam(
                        widget.contrato,
                        ParamType.Document,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      'contrato': widget.contrato,
                    },
                  );
                },
                text: 'Assinar Testemunha',
                options: FFButtonOptions(
                  width: 250.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
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
              FFButtonWidget(
                onPressed: () async {
                  var shouldSetState = false;
                  if (_model.confirmarDeletar) {
                    await widget.contrato!.reference.delete();
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('deletarPDF')
                          .call({
                        "contratoId": widget.contrato!.reference.id,
                      });
                      _model.cloudFunctionzyl =
                          DeletarPDFCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.cloudFunctionzyl =
                          DeletarPDFCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.cloudFunctionzyl!.succeeded!) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ocorreu um erro ao deletar PDF.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).error,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          duration: const Duration(milliseconds: 2000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                        ),
                      );
                      if (shouldSetState) setState(() {});
                      return;
                    }
                  } else {
                    _model.confirmarDeletar = true;
                    setState(() {});
                    if (shouldSetState) setState(() {});
                    return;
                  }

                  context.safePop();
                  if (shouldSetState) setState(() {});
                },
                text:
                    _model.confirmarDeletar ? 'Confirmar' : 'Deletar Contrato',
                options: FFButtonOptions(
                  width: 250.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: valueOrDefault<Color>(
                    _model.confirmarDeletar
                        ? FlutterFlowTheme.of(context).tertiary
                        : FlutterFlowTheme.of(context).error,
                    FlutterFlowTheme.of(context).error,
                  ),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
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
            ].divide(const SizedBox(height: 24.0)).around(const SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
