import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noun31_model.dart';
export 'noun31_model.dart';

class Noun31Widget extends StatefulWidget {
  const Noun31Widget({
    super.key,
    required this.decl,
    required this.ns,
    required this.gs,
    required this.engs,
    required this.engp,
    required this.gender,
    required this.noun11,
    required this.noun12,
    required this.noun21,
    required this.noun22,
    required this.qn,
  });

  final int? decl;
  final String? ns;
  final String? gs;
  final String? engs;
  final String? engp;
  final String? gender;
  final String? noun11;
  final String? noun12;
  final String? noun21;
  final String? noun22;
  final int? qn;

  static String routeName = 'noun31';
  static String routePath = '/noun31';

  @override
  State<Noun31Widget> createState() => _Noun31WidgetState();
}

class _Noun31WidgetState extends State<Noun31Widget> {
  late Noun31Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Noun31Model());

    _model.nomsingTextController ??= TextEditingController();
    _model.nomsingFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Noun Declension Practice',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (FFAppState().nounspractice)
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget!.ns!,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: ' , ',
                              style: TextStyle(
                                fontSize: 32.0,
                              ),
                            ),
                            TextSpan(
                              text: widget!.gs!,
                              style: GoogleFonts.getFont(
                                'Raleway',
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  if (FFAppState().nounspractice)
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: valueOrDefault<String>(
                                functions
                                    .nounhints(widget!.ns!, widget!.gs!,
                                        widget!.gender!, widget!.decl!)
                                    ?.elementAtOrNull(12),
                                '-',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: (functions
                                                .nounhints(
                                                    widget!.ns!,
                                                    widget!.gs!,
                                                    widget!.gender!,
                                                    widget!.decl!)
                                                ?.elementAtOrNull(13)) ==
                                            ''
                                        ? Color(0xFF5FFF06)
                                        : Colors.white,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            TextSpan(
                              text: (functions
                                  .nounhints(widget!.ns!, widget!.gs!,
                                      widget!.gender!, widget!.decl!)!
                                  .elementAtOrNull(13))!,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: Color(0xFF5FFF06),
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            TextSpan(
                              text: (functions
                                  .nounhints(widget!.ns!, widget!.gs!,
                                      widget!.gender!, widget!.decl!)!
                                  .elementAtOrNull(14))!,
                              style: GoogleFonts.getFont(
                                'Raleway',
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Container(
                      width: 393.0,
                      height: 239.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF81201A),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Dative Singular',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'English Word: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFFFBD00),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget!.engs,
                                        '0',
                                      ),
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 350.0,
                              child: TextFormField(
                                controller: _model.nomsingTextController,
                                focusNode: _model.nomsingFocusNode,
                                onFieldSubmitted: (_) async {
                                  context.pushNamed(
                                    Noun32Widget.routeName,
                                    queryParameters: {
                                      'decl': serializeParam(
                                        widget!.decl,
                                        ParamType.int,
                                      ),
                                      'ns': serializeParam(
                                        widget!.ns,
                                        ParamType.String,
                                      ),
                                      'gs': serializeParam(
                                        widget!.gs,
                                        ParamType.String,
                                      ),
                                      'engs': serializeParam(
                                        widget!.engs,
                                        ParamType.String,
                                      ),
                                      'engp': serializeParam(
                                        widget!.engp,
                                        ParamType.String,
                                      ),
                                      'gender': serializeParam(
                                        widget!.gender,
                                        ParamType.String,
                                      ),
                                      'noun11': serializeParam(
                                        widget!.noun11,
                                        ParamType.String,
                                      ),
                                      'noun12': serializeParam(
                                        widget!.noun12,
                                        ParamType.String,
                                      ),
                                      'noun21': serializeParam(
                                        widget!.noun21,
                                        ParamType.String,
                                      ),
                                      'noun22': serializeParam(
                                        widget!.noun22,
                                        ParamType.String,
                                      ),
                                      'noun31': serializeParam(
                                        _model.nomsingTextController.text,
                                        ParamType.String,
                                      ),
                                      'qn': serializeParam(
                                        widget!.qn,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Enter Latin Translation',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF9197A2),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  filled: true,
                                  fillColor: Colors.black,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.nomsingTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    Noun32Widget.routeName,
                                    queryParameters: {
                                      'decl': serializeParam(
                                        widget!.decl,
                                        ParamType.int,
                                      ),
                                      'ns': serializeParam(
                                        widget!.ns,
                                        ParamType.String,
                                      ),
                                      'gs': serializeParam(
                                        widget!.gs,
                                        ParamType.String,
                                      ),
                                      'engs': serializeParam(
                                        widget!.engs,
                                        ParamType.String,
                                      ),
                                      'engp': serializeParam(
                                        widget!.engp,
                                        ParamType.String,
                                      ),
                                      'gender': serializeParam(
                                        widget!.gender,
                                        ParamType.String,
                                      ),
                                      'noun11': serializeParam(
                                        widget!.noun11,
                                        ParamType.String,
                                      ),
                                      'noun12': serializeParam(
                                        widget!.noun12,
                                        ParamType.String,
                                      ),
                                      'noun21': serializeParam(
                                        widget!.noun21,
                                        ParamType.String,
                                      ),
                                      'noun22': serializeParam(
                                        widget!.noun22,
                                        ParamType.String,
                                      ),
                                      'noun31': serializeParam(
                                        _model.nomsingTextController.text,
                                        ParamType.String,
                                      ),
                                      'qn': serializeParam(
                                        widget!.qn,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                text: 'Submit',
                                options: FFButtonOptions(
                                  width: 125.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsets.all(0.0),
                                  color: Colors.black,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
