import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gerenciar_usuario_page_model.dart';
export 'gerenciar_usuario_page_model.dart';

class GerenciarUsuarioPageWidget extends StatefulWidget {
  const GerenciarUsuarioPageWidget({
    super.key,
    this.usuario,
  });

  final UserRecord? usuario;

  @override
  State<GerenciarUsuarioPageWidget> createState() =>
      _GerenciarUsuarioPageWidgetState();
}

class _GerenciarUsuarioPageWidgetState extends State<GerenciarUsuarioPageWidget>
    with TickerProviderStateMixin {
  late GerenciarUsuarioPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GerenciarUsuarioPageModel());

    _model.nomeTextController ??=
        TextEditingController(text: widget.usuario?.displayName);
    _model.nomeFocusNode ??= FocusNode();

    _model.emailTextController ??=
        TextEditingController(text: widget.usuario?.email);
    _model.emailFocusNode ??= FocusNode();

    _model.novaSenhaTextController ??= TextEditingController();
    _model.novaSenhaFocusNode ??= FocusNode();

    _model.senhaTextController ??= TextEditingController();
    _model.senhaFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textFieldOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
              context.safePop();
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
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).primary,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).accent1,
                  icon: FaIcon(
                    FontAwesomeIcons.check,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                  showLoadingIndicator: true,
                  onPressed: () async {
                    var shouldSetState = false;
                    if (_model.formKey.currentState == null ||
                        !_model.formKey.currentState!.validate()) {
                      return;
                    }
                    if (widget.usuario != null) {
                      try {
                        final result = await FirebaseFunctions.instanceFor(
                                region: 'us-central1')
                            .httpsCallable('gerenciarUsuario')
                            .call({
                          "uid": widget.usuario?.uid,
                          "displayName": _model.nomeTextController.text,
                          "email": _model.emailTextController.text,
                          "password": _model.novaSenhaTextController.text,
                        });
                        _model.cloudFunctionAlterar =
                            GerenciarUsuarioCloudFunctionCallResponse(
                          succeeded: true,
                        );
                      } on FirebaseFunctionsException catch (error) {
                        _model.cloudFunctionAlterar =
                            GerenciarUsuarioCloudFunctionCallResponse(
                          errorCode: error.code,
                          succeeded: false,
                        );
                      }

                      shouldSetState = true;
                      if (!_model.cloudFunctionAlterar!.succeeded!) {
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Ocorreu um erro ao alterar usuário.',
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
                      try {
                        final result = await FirebaseFunctions.instanceFor(
                                region: 'us-central1')
                            .httpsCallable('gerenciarUsuario')
                            .call({
                          "uid": null,
                          "displayName": _model.nomeTextController.text,
                          "email": _model.emailTextController.text,
                          "password": _model.senhaTextController.text,
                        });
                        _model.cloudFunctionCriar =
                            GerenciarUsuarioCloudFunctionCallResponse(
                          succeeded: true,
                        );
                      } on FirebaseFunctionsException catch (error) {
                        _model.cloudFunctionCriar =
                            GerenciarUsuarioCloudFunctionCallResponse(
                          errorCode: error.code,
                          succeeded: false,
                        );
                      }

                      shouldSetState = true;
                      if (!_model.cloudFunctionCriar!.succeeded!) {
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Ocorreu um erro ao criar usuário.',
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
                    }

                    context.safePop();
                    if (shouldSetState) setState(() {});
                  },
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Gerenciar Usuário',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _model.nomeTextController,
                        focusNode: _model.nomeFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Nome',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).alternate,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model.nomeTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.emailTextController,
                        focusNode: _model.emailFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.email],
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'E-mail',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).alternate,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.emailAddress,
                        validator: _model.emailTextControllerValidator
                            .asValidator(context),
                      ),
                      Builder(
                        builder: (context) {
                          if (widget.usuario != null) {
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SwitchListTile.adaptive(
                                    value: _model.redefinirSenhaValue ??= false,
                                    onChanged: (newValue) async {
                                      setState(() => _model
                                          .redefinirSenhaValue = newValue);
                                      if (newValue) {
                                        setState(() {
                                          _model.novaSenhaTextController
                                              ?.clear();
                                        });
                                      }
                                    },
                                    title: Text(
                                      'Redefinir Senha',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    tileColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  if (_model.redefinirSenhaValue ?? true)
                                    TextFormField(
                                      controller:
                                          _model.novaSenhaTextController,
                                      focusNode: _model.novaSenhaFocusNode,
                                      autofocus: true,
                                      autofillHints: const [
                                        AutofillHints.newPassword
                                      ],
                                      textInputAction: TextInputAction.done,
                                      obscureText: !_model.novaSenhaVisibility,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        labelText: 'Nova Senha',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model.novaSenhaVisibility =
                                                !_model.novaSenhaVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.novaSenhaVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: _model
                                          .novaSenhaTextControllerValidator
                                          .asValidator(context),
                                    ).animateOnPageLoad(animationsMap[
                                        'textFieldOnPageLoadAnimation']!),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            );
                          } else {
                            return TextFormField(
                              controller: _model.senhaTextController,
                              focusNode: _model.senhaFocusNode,
                              autofocus: true,
                              autofillHints: const [AutofillHints.password],
                              textInputAction: TextInputAction.done,
                              obscureText: !_model.senhaVisibility,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Senha',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.senhaVisibility =
                                        !_model.senhaVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.senhaVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              keyboardType: TextInputType.visiblePassword,
                              validator: _model.senhaTextControllerValidator
                                  .asValidator(context),
                            );
                          }
                        },
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 24.0)).around(const SizedBox(height: 24.0)),
          ),
        ),
      ),
    );
  }
}
