import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'registrar_contrato_page_model.dart';
export 'registrar_contrato_page_model.dart';

class RegistrarContratoPageWidget extends StatefulWidget {
  const RegistrarContratoPageWidget({
    super.key,
    this.contrato,
  });

  final ContratoRecord? contrato;

  @override
  State<RegistrarContratoPageWidget> createState() =>
      _RegistrarContratoPageWidgetState();
}

class _RegistrarContratoPageWidgetState
    extends State<RegistrarContratoPageWidget> {
  late RegistrarContratoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrarContratoPageModel());

    _model.contratanteTextController ??=
        TextEditingController(text: widget.contrato?.contratante);
    _model.contratanteFocusNode ??= FocusNode();

    _model.documentoTextController ??=
        TextEditingController(text: widget.contrato?.documento);
    _model.documentoFocusNode ??= FocusNode();

    _model.rgTextController ??=
        TextEditingController(text: widget.contrato?.rg);
    _model.rgFocusNode ??= FocusNode();

    _model.dnTextController ??=
        TextEditingController(text: widget.contrato?.dn);
    _model.dnFocusNode ??= FocusNode();

    _model.filiacaoTextController ??=
        TextEditingController(text: widget.contrato?.filiacao);
    _model.filiacaoFocusNode ??= FocusNode();

    _model.naturalidadeTextController ??=
        TextEditingController(text: widget.contrato?.naturalidade);
    _model.naturalidadeFocusNode ??= FocusNode();

    _model.enderecoTextController ??=
        TextEditingController(text: widget.contrato?.endereco);
    _model.enderecoFocusNode ??= FocusNode();

    _model.numeroTextController ??=
        TextEditingController(text: widget.contrato?.numero);
    _model.numeroFocusNode ??= FocusNode();

    _model.bairroTextController ??=
        TextEditingController(text: widget.contrato?.bairro);
    _model.bairroFocusNode ??= FocusNode();

    _model.cidadeTextController ??=
        TextEditingController(text: widget.contrato?.cidade);
    _model.cidadeFocusNode ??= FocusNode();

    _model.cepTextController ??=
        TextEditingController(text: widget.contrato?.cep);
    _model.cepFocusNode ??= FocusNode();

    _model.ufTextController ??=
        TextEditingController(text: widget.contrato?.uf);
    _model.ufFocusNode ??= FocusNode();

    _model.telefonesTextController ??=
        TextEditingController(text: widget.contrato?.telefones);
    _model.telefonesFocusNode ??= FocusNode();

    _model.alunoTextController ??=
        TextEditingController(text: widget.contrato?.aluno);
    _model.alunoFocusNode ??= FocusNode();

    _model.alunoDNTextController ??=
        TextEditingController(text: widget.contrato?.alunoDN);
    _model.alunoDNFocusNode ??= FocusNode();

    _model.alunoDocumentoTextController ??=
        TextEditingController(text: widget.contrato?.alunoDocumento);
    _model.alunoDocumentoFocusNode ??= FocusNode();

    _model.alunoNaturalidadeTextController ??=
        TextEditingController(text: widget.contrato?.alunoNaturalidade);
    _model.alunoNaturalidadeFocusNode ??= FocusNode();

    _model.alunoTelefoneTextController ??=
        TextEditingController(text: widget.contrato?.alunoTelefone);
    _model.alunoTelefoneFocusNode ??= FocusNode();

    _model.outroTextController ??=
        TextEditingController(text: widget.contrato?.outro);
    _model.outroFocusNode ??= FocusNode();

    _model.indicacaoTextController ??=
        TextEditingController(text: widget.contrato?.indicacao);
    _model.indicacaoFocusNode ??= FocusNode();

    _model.horasTextController ??=
        TextEditingController(text: widget.contrato?.horas);
    _model.horasFocusNode ??= FocusNode();

    _model.inicioPrevistoTextController ??=
        TextEditingController(text: widget.contrato?.inicioPrevisto);
    _model.inicioPrevistoFocusNode ??= FocusNode();

    _model.contratadaTextController ??=
        TextEditingController(text: widget.contrato?.contratada);
    _model.contratadaFocusNode ??= FocusNode();

    _model.primeiraParcelaTextController ??=
        TextEditingController(text: widget.contrato?.primeiraParcela);
    _model.primeiraParcelaFocusNode ??= FocusNode();

    _model.descontoTextController ??=
        TextEditingController(text: widget.contrato?.descontoRS);
    _model.descontoFocusNode ??= FocusNode();

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
          actions: const [],
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
                  'Registrar Contato',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          '1. Contratante',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.contratanteTextController,
                        focusNode: _model.contratanteFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Contratante',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model.contratanteTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.documentoTextController,
                        focusNode: _model.documentoFocusNode,
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'CPF',
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
                          prefixIcon: Icon(
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.documentoTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.documentoMask],
                      ),
                      TextFormField(
                        controller: _model.rgTextController,
                        focusNode: _model.rgFocusNode,
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'RG',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          alignLabelWithHint: false,
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
                          prefixIcon: Icon(
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.rgTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.rgMask],
                      ),
                      TextFormField(
                        controller: _model.dnTextController,
                        focusNode: _model.dnFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Data de nascimento',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          alignLabelWithHint: false,
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
                          prefixIcon: Icon(
                            Icons.date_range_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.datetime,
                        validator: _model.dnTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.dnMask],
                      ),
                      TextFormField(
                        controller: _model.filiacaoTextController,
                        focusNode: _model.filiacaoFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Filiação',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model.filiacaoTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.naturalidadeTextController,
                        focusNode: _model.naturalidadeFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Naturalidade',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model.naturalidadeTextControllerValidator
                            .asValidator(context),
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.sexoValueController ??=
                            FormFieldController<String>(
                          _model.sexoValue ??= widget.contrato?.sexo,
                        ),
                        options: List<String>.from(['M', 'F']),
                        optionLabels: const ['Masculino', 'Feminino'],
                        onChanged: (val) =>
                            setState(() => _model.sexoValue = val),
                        width: 300.0,
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Selecione um Sexo',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                      TextFormField(
                        controller: _model.enderecoTextController,
                        focusNode: _model.enderecoFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.fullStreetAddress],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Endereço',
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
                          prefixIcon: Icon(
                            Icons.location_on_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.streetAddress,
                        validator: _model.enderecoTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.numeroTextController,
                        focusNode: _model.numeroFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'N°',
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
                          prefixIcon: Icon(
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.numeroTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                      TextFormField(
                        controller: _model.bairroTextController,
                        focusNode: _model.bairroFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Bairro',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.streetAddress,
                        validator: _model.bairroTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.cidadeTextController,
                        focusNode: _model.cidadeFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.addressCity],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Cidade',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.streetAddress,
                        validator: _model.cidadeTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.cepTextController,
                        focusNode: _model.cepFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.postalCode],
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'CEP',
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
                          prefixIcon: Icon(
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.cepTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.cepMask],
                      ),
                      TextFormField(
                        controller: _model.ufTextController,
                        focusNode: _model.ufFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.addressState],
                        textCapitalization: TextCapitalization.characters,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'UF',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        validator: _model.ufTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.ufMask],
                      ),
                      TextFormField(
                        controller: _model.telefonesTextController,
                        focusNode: _model.telefonesFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.telephoneNumber],
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Telefones',
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
                          prefixIcon: Icon(
                            Icons.phone_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.phone,
                        validator: _model.telefonesTextControllerValidator
                            .asValidator(context),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          '2. Usuário',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.alunoTextController,
                        focusNode: _model.alunoFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Nome do Aluno',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model.alunoTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.alunoDNTextController,
                        focusNode: _model.alunoDNFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Data de nascimento',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          alignLabelWithHint: false,
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
                          prefixIcon: Icon(
                            Icons.date_range_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.datetime,
                        validator: _model.alunoDNTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.alunoDNMask],
                      ),
                      TextFormField(
                        controller: _model.alunoDocumentoTextController,
                        focusNode: _model.alunoDocumentoFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'CPF ou RG',
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
                          prefixIcon: Icon(
                            Icons.numbers_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        validator: _model.alunoDocumentoTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.alunoNaturalidadeTextController,
                        focusNode: _model.alunoNaturalidadeFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Naturalidade',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model
                            .alunoNaturalidadeTextControllerValidator
                            .asValidator(context),
                      ),
                      TextFormField(
                        controller: _model.alunoTelefoneTextController,
                        focusNode: _model.alunoTelefoneFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.telephoneNumber],
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Telefone',
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
                          prefixIcon: Icon(
                            Icons.phone_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.alunoTelefoneTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.alunoTelefoneMask],
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.opcaoCursoValueController ??=
                            FormFieldController<String>(
                          _model.opcaoCursoValue ??=
                              widget.contrato?.opcaoCurso,
                        ),
                        options: List<String>.from(['1', '2', '3', '4']),
                        optionLabels: const [
                          '1.Aux. Adm. e Com 120H',
                          '2.Auxiliar de Veterinária 120H',
                          '3.Assistente Jurídico 60H',
                          '4.Outro/Qual:'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.opcaoCursoValue = val),
                        width: 300.0,
                        height: 50.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Selecione uma Opção de Curso',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                      if (_model.opcaoCursoValue == '4')
                        TextFormField(
                          controller: _model.outroTextController,
                          focusNode: _model.outroFocusNode,
                          autofocus: true,
                          textCapitalization: TextCapitalization.sentences,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
                            labelText: 'Outro/Qual',
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
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            prefixIcon: Icon(
                              Icons.text_fields_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          maxLength: 50,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          validator: _model.outroTextControllerValidator
                              .asValidator(context),
                        ),
                      TextFormField(
                        controller: _model.indicacaoTextController,
                        focusNode: _model.indicacaoFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.sentences,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Indicação',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        maxLines: 5,
                        minLines: 1,
                        maxLength: 80,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        keyboardType: TextInputType.multiline,
                        validator: _model.indicacaoTextControllerValidator
                            .asValidator(context),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          '1. Disposições Iniciais',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.horasTextController,
                        focusNode: _model.horasFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.characters,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Horas',
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
                          prefixIcon: Icon(
                            Icons.access_time_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.horasTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                      TextFormField(
                        controller: _model.inicioPrevistoTextController,
                        focusNode: _model.inicioPrevistoFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Inicio Previsto',
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
                          prefixIcon: Icon(
                            Icons.date_range_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.datetime,
                        validator: _model.inicioPrevistoTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.inicioPrevistoMask],
                      ),
                      TextFormField(
                        controller: _model.contratadaTextController,
                        focusNode: _model.contratadaFocusNode,
                        autofocus: true,
                        autofillHints: const [AutofillHints.name],
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Contratada',
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
                          prefixIcon: Icon(
                            Icons.text_fields_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.name,
                        validator: _model.contratadaTextControllerValidator
                            .asValidator(context),
                      ),
                      Builder(
                        builder: (context) {
                          if (_model.opcaoCursoValue == '3') {
                            return FlutterFlowDropDown<String>(
                              controller: _model.pagementoOp3ValueController ??=
                                  FormFieldController<String>(
                                _model.pagementoOp3Value ??=
                                    widget.contrato?.pagamento,
                              ),
                              options: List<String>.from(
                                  ['3', '5', '8', '12', '0', '18']),
                              optionLabels: const [
                                'R\$ 1635,00 em 3x - R\$ 545,00',
                                'R\$ 1825,00 em 5x - R\$ 365,00',
                                'R\$ 2040,00 em 8x - R\$ 255,00',
                                'R\$ 2340,00 em 12x - R\$ 195,00',
                                'À Vista/Cartão R\$ 1450,00 em 12x',
                                'R\$ 2790,00 em 18x - R\$ 155,00'
                              ],
                              onChanged: (val) => setState(
                                  () => _model.pagementoOp3Value = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Selecione um Pagamento',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            );
                          } else {
                            return FlutterFlowDropDown<String>(
                              controller: _model.pagementoValueController ??=
                                  FormFieldController<String>(
                                _model.pagementoValue ??=
                                    widget.contrato?.pagamento,
                              ),
                              options: List<String>.from(
                                  ['3', '8', '12', '14', '18', '24', '36']),
                              optionLabels: const [
                                'R\$ 2076,00 em 3x - R\$ 692,00',
                                'R\$ 2440,00 em 8x - R\$ 305,00',
                                'À Vista/Cartão R\$ 1999,00 em 12x',
                                'R\$ 2870,00 em 14x - R\$ 205,00',
                                'R\$ 3150,00 em 18x - R\$ 175,00',
                                'R\$ 3480,00 em 24x - R\$ 145,00',
                                'R\$ 4500,00 em 36x - R\$ 125,00'
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.pagementoValue = val),
                              width: 300.0,
                              height: 50.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: 'Selecione um Pagamento',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              margin: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            );
                          }
                        },
                      ),
                      TextFormField(
                        controller: _model.primeiraParcelaTextController,
                        focusNode: _model.primeiraParcelaFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.characters,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Primeira Parcela',
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
                          prefixIcon: Icon(
                            Icons.date_range_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: TextInputType.datetime,
                        validator: _model.primeiraParcelaTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.primeiraParcelaMask],
                      ),
                      TextFormField(
                        controller: _model.descontoTextController,
                        focusNode: _model.descontoFocusNode,
                        autofocus: true,
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          labelText: 'Desconto',
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
                          prefixIcon: Icon(
                            Icons.attach_money_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        validator: _model.descontoTextControllerValidator
                            .asValidator(context),
                      ),
                    ].divide(const SizedBox(height: 8.0)),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  var shouldSetState = false;
                  if (_model.formKey.currentState == null ||
                      !_model.formKey.currentState!.validate()) {
                    return;
                  }
                  if (widget.contrato == null) {
                    _model.count = await queryContratoRecordCount();
                    shouldSetState = true;

                    var contratoRecordReference =
                        ContratoRecord.collection.doc();
                    await contratoRecordReference.set(createContratoRecordData(
                      criadoPor: currentUserDisplayName,
                      criadoEm: getCurrentTimestamp,
                      contratante: _model.contratanteTextController.text,
                      documento: _model.documentoTextController.text,
                      rg: _model.rgTextController.text,
                      filiacao: _model.filiacaoTextController.text,
                      naturalidade: _model.naturalidadeTextController.text,
                      sexo: _model.sexoValue,
                      endereco: _model.enderecoTextController.text,
                      numero: _model.numeroTextController.text,
                      bairro: _model.bairroTextController.text,
                      cidade: _model.cidadeTextController.text,
                      cep: _model.cepTextController.text,
                      uf: _model.ufTextController.text,
                      telefones: _model.telefonesTextController.text,
                      aluno: _model.alunoTextController.text,
                      alunoDocumento: _model.alunoDocumentoTextController.text,
                      alunoNaturalidade:
                          _model.alunoNaturalidadeTextController.text,
                      alunoTelefone: _model.alunoTelefoneTextController.text,
                      dn: _model.dnTextController.text,
                      alunoDN: _model.alunoDNTextController.text,
                      opcaoCurso: _model.opcaoCursoValue,
                      indicacao: _model.indicacaoTextController.text,
                      outro: _model.outroTextController.text,
                      horas: _model.horasTextController.text,
                      contratada: _model.contratadaTextController.text,
                      descontoRS: _model.descontoTextController.text,
                      pagamento: _model.opcaoCursoValue == '3'
                          ? _model.pagementoOp3Value
                          : _model.pagementoValue,
                      inicioPrevisto: _model.inicioPrevistoTextController.text,
                      primeiraParcela:
                          _model.primeiraParcelaTextController.text,
                      criador: currentUserReference,
                      signedEm: functions.twoDaysLater(),
                      criadoStr: dateTimeFormat(
                        "yMd",
                        getCurrentTimestamp,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      numeroDoc: valueOrDefault<int>(
                            _model.count,
                            0,
                          ) +
                          1,
                    ));
                    _model.contratoDoc = ContratoRecord.getDocumentFromData(
                        createContratoRecordData(
                          criadoPor: currentUserDisplayName,
                          criadoEm: getCurrentTimestamp,
                          contratante: _model.contratanteTextController.text,
                          documento: _model.documentoTextController.text,
                          rg: _model.rgTextController.text,
                          filiacao: _model.filiacaoTextController.text,
                          naturalidade: _model.naturalidadeTextController.text,
                          sexo: _model.sexoValue,
                          endereco: _model.enderecoTextController.text,
                          numero: _model.numeroTextController.text,
                          bairro: _model.bairroTextController.text,
                          cidade: _model.cidadeTextController.text,
                          cep: _model.cepTextController.text,
                          uf: _model.ufTextController.text,
                          telefones: _model.telefonesTextController.text,
                          aluno: _model.alunoTextController.text,
                          alunoDocumento:
                              _model.alunoDocumentoTextController.text,
                          alunoNaturalidade:
                              _model.alunoNaturalidadeTextController.text,
                          alunoTelefone:
                              _model.alunoTelefoneTextController.text,
                          dn: _model.dnTextController.text,
                          alunoDN: _model.alunoDNTextController.text,
                          opcaoCurso: _model.opcaoCursoValue,
                          indicacao: _model.indicacaoTextController.text,
                          outro: _model.outroTextController.text,
                          horas: _model.horasTextController.text,
                          contratada: _model.contratadaTextController.text,
                          descontoRS: _model.descontoTextController.text,
                          pagamento: _model.opcaoCursoValue == '3'
                              ? _model.pagementoOp3Value
                              : _model.pagementoValue,
                          inicioPrevisto:
                              _model.inicioPrevistoTextController.text,
                          primeiraParcela:
                              _model.primeiraParcelaTextController.text,
                          criador: currentUserReference,
                          signedEm: functions.twoDaysLater(),
                          criadoStr: dateTimeFormat(
                            "yMd",
                            getCurrentTimestamp,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          numeroDoc: valueOrDefault<int>(
                                _model.count,
                                0,
                              ) +
                              1,
                        ),
                        contratoRecordReference);
                    shouldSetState = true;
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('criarPDF')
                          .call({
                        "contratoId": _model.contratoDoc!.reference.id,
                      });
                      _model.func01 = CriarPDFCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.func01 = CriarPDFCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.func01!.succeeded!) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ocorreu um erro ao criar PDF.',
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
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('escreverPDF')
                          .call({
                        "contratoId": _model.contratoDoc!.reference.id,
                      });
                      _model.func02 = EscreverPDFCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.func02 = EscreverPDFCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.func02!.succeeded!) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ocorreu um erro ao escrever no PDF.',
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
                    await widget.contrato!.reference
                        .update(createContratoRecordData(
                      contratante: _model.contratanteTextController.text,
                      documento: _model.documentoTextController.text,
                      rg: _model.rgTextController.text,
                      filiacao: _model.filiacaoTextController.text,
                      naturalidade: _model.naturalidadeTextController.text,
                      sexo: _model.sexoValue,
                      endereco: _model.enderecoTextController.text,
                      bairro: _model.bairroTextController.text,
                      cidade: _model.cidadeTextController.text,
                      uf: _model.ufTextController.text,
                      telefones: _model.telefonesTextController.text,
                      aluno: _model.alunoTextController.text,
                      alunoDocumento: _model.alunoDocumentoTextController.text,
                      alunoNaturalidade:
                          _model.alunoNaturalidadeTextController.text,
                      alunoTelefone: _model.alunoTelefoneTextController.text,
                      numero: _model.numeroTextController.text,
                      cep: _model.cepTextController.text,
                      dn: _model.dnTextController.text,
                      alunoDN: _model.alunoDNTextController.text,
                      indicacao: _model.indicacaoTextController.text,
                      horas: _model.horasTextController.text,
                      outro: _model.outroTextController.text,
                      contratada: _model.contratadaTextController.text,
                      descontoRS: _model.descontoTextController.text,
                      opcaoCurso: _model.opcaoCursoValue,
                      pagamento: _model.opcaoCursoValue == '3'
                          ? _model.pagementoOp3Value
                          : _model.pagementoValue,
                      inicioPrevisto: _model.inicioPrevistoTextController.text,
                      primeiraParcela:
                          _model.primeiraParcelaTextController.text,
                      criadoStr: dateTimeFormat(
                        "yMd",
                        widget.contrato?.criadoEm,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                    ));
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('deletarPDF')
                          .call({
                        "contratoId": widget.contrato!.reference.id,
                      });
                      _model.cloudFunctionq93 =
                          DeletarPDFCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.cloudFunctionq93 =
                          DeletarPDFCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.cloudFunctionq93!.succeeded!) {
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
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('criarPDF')
                          .call({
                        "contratoId": widget.contrato!.reference.id,
                      });
                      _model.cloudFunctions6g =
                          CriarPDFCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.cloudFunctions6g =
                          CriarPDFCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.cloudFunctions6g!.succeeded!) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ocorreu um erro ao criar PDF.',
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
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('escreverPDF')
                          .call({
                        "contratoId": widget.contrato!.reference.id,
                      });
                      _model.cloudFunctionf9l =
                          EscreverPDFCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.cloudFunctionf9l =
                          EscreverPDFCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.cloudFunctionf9l!.succeeded!) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ocorreu um erro ao escrever no PDF.',
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
                    try {
                      final result = await FirebaseFunctions.instanceFor(
                              region: 'us-central1')
                          .httpsCallable('assinarContrato')
                          .call({
                        "contratoId": widget.contrato!.reference.id,
                      });
                      _model.cloudFunctionap7 =
                          AssinarContratoCloudFunctionCallResponse(
                        succeeded: true,
                      );
                    } on FirebaseFunctionsException catch (error) {
                      _model.cloudFunctionap7 =
                          AssinarContratoCloudFunctionCallResponse(
                        errorCode: error.code,
                        succeeded: false,
                      );
                    }

                    shouldSetState = true;
                    if (!_model.cloudFunctionap7!.succeeded!) {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Ocorreu um erro ao assinar PDF.',
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
                text: 'Gerar Contrato',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
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
