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
import 'verb06_model.dart';
export 'verb06_model.dart';

class Verb06Widget extends StatefulWidget {
  const Verb06Widget({
    super.key,
    required this.decl,
    required this.qn,
    required this.actpass,
    required this.type,
    required this.pres,
    required this.infi,
    required this.perf,
    required this.passperf,
    required this.english,
    required this.v1,
    required this.v2,
    required this.v3,
    required this.v4,
    required this.v5,
    required this.rgirg,
    required this.engp,
    required this.engpp,
  });

  final int? decl;
  final int? qn;
  final int? actpass;
  final int? type;
  final String? pres;
  final String? infi;
  final String? perf;
  final String? passperf;
  final String? english;
  final String? v1;
  final String? v2;
  final String? v3;
  final String? v4;
  final String? v5;
  final int? rgirg;
  final String? engp;
  final String? engpp;

  static String routeName = 'verb06';
  static String routePath = '/verb06';

  @override
  State<Verb06Widget> createState() => _Verb06WidgetState();
}

class _Verb06WidgetState extends State<Verb06Widget> {
  late Verb06Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Verb06Model());

    _model.verbTextController ??= TextEditingController();
    _model.verbFocusNode ??= FocusNode();

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
            'Verb Conjugation Practice',
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
                  if (FFAppState().regverbspractice && (widget!.rgirg == 0))
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget!.pres!,
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
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            ),
                            TextSpan(
                              text: widget!.infi!,
                              style: GoogleFonts.getFont(
                                'Raleway',
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            ),
                            TextSpan(
                              text: ' , ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: widget!.perf!,
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: ' , ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: widget!.passperf!,
                              style: TextStyle(),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  if (FFAppState().regverbspractice && (widget!.rgirg == 0))
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: (functions
                                  .regverbhints(
                                      widget!.pres!,
                                      widget!.infi!,
                                      widget!.perf!,
                                      widget!.passperf!,
                                      widget!.decl!,
                                      widget!.actpass!,
                                      widget!.type!)!
                                  .elementAtOrNull(15))!,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: (functions
                                                .regverbhints(
                                                    widget!.pres!,
                                                    widget!.infi!,
                                                    widget!.perf!,
                                                    widget!.passperf!,
                                                    widget!.decl!,
                                                    widget!.actpass!,
                                                    widget!.type!)
                                                ?.elementAtOrNull(16)) ==
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
                                  .regverbhints(
                                      widget!.pres!,
                                      widget!.infi!,
                                      widget!.perf!,
                                      widget!.passperf!,
                                      widget!.decl!,
                                      widget!.actpass!,
                                      widget!.type!)!
                                  .elementAtOrNull(16))!,
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
                              text: FFAppState().regverbspractice &&
                                      (widget!.actpass == 1) &&
                                      (widget!.type == 1)
                                  ? '+ī'
                                  : '',
                              style: GoogleFonts.getFont(
                                'Raleway',
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            ),
                            TextSpan(
                              text: (functions
                                  .regverbhints(
                                      widget!.pres!,
                                      widget!.infi!,
                                      widget!.perf!,
                                      widget!.passperf!,
                                      widget!.decl!,
                                      widget!.actpass!,
                                      widget!.type!)!
                                  .elementAtOrNull(17))!,
                              style: TextStyle(),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                    fontSize: 32.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Container(
                      width: 393.0,
                      height: 370.0,
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
                                padding: EdgeInsets.all(14.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: () {
                                          if ((widget!.actpass == 0) &&
                                              (widget!.rgirg == 0)) {
                                            return 'Indicative Active ';
                                          } else if ((widget!.actpass == 1) &&
                                              (widget!.rgirg == 0)) {
                                            return 'Indicative Passive ';
                                          } else {
                                            return 'Irregular  ';
                                          }
                                        }(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      TextSpan(
                                        text: () {
                                          if (widget!.type == 0) {
                                            return 'Present';
                                          } else if (widget!.type == 1) {
                                            return 'Perfect';
                                          } else {
                                            return 'Future';
                                          }
                                        }(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 32.0,
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
                                  textAlign: TextAlign.center,
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
                                      text: () {
                                        if (widget!.rgirg == 1) {
                                          return '';
                                        } else if ((widget!.actpass == 0) &&
                                            (widget!.type != 2)) {
                                          return 'They ';
                                        } else if ((widget!.actpass == 0) &&
                                            (widget!.type == 2)) {
                                          return 'They will ';
                                        } else if ((widget!.actpass == 1) &&
                                            (widget!.type == 0)) {
                                          return 'They are ';
                                        } else if ((widget!.actpass == 1) &&
                                            (widget!.type == 1)) {
                                          return 'They were ';
                                        } else if ((widget!.actpass == 1) &&
                                            (widget!.type == 2)) {
                                          return 'They will be ';
                                        } else {
                                          return '';
                                        }
                                      }(),
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        () {
                                          if (widget!.rgirg == 1) {
                                            return functions
                                                .irregverbshints(widget!.infi!,
                                                    widget!.type!)
                                                .elementAtOrNull(5);
                                          } else if ((widget!.actpass == 0) &&
                                              (widget!.type != 1)) {
                                            return widget!.english;
                                          } else if ((widget!.actpass == 0) &&
                                              (widget!.type == 1)) {
                                            return widget!.engp;
                                          } else if (widget!.actpass == 1) {
                                            return widget!.engpp;
                                          } else {
                                            return widget!.engp;
                                          }
                                        }(),
                                        '-',
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
                                controller: _model.verbTextController,
                                focusNode: _model.verbFocusNode,
                                onFieldSubmitted: (_) async {
                                  if (widget!.rgirg == 0) {
                                    if (!FFAppState().regverbspractice) {
                                      if (widget!.v1 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(0)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v2 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(1)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v3 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(2)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v4 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(3)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v5 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(4)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (_model.verbTextController.text ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(5)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (FFAppState()
                                              .regverbsqn
                                              .elementAtOrNull(
                                                  functions.regverbsmisc1(
                                                      widget!.decl!,
                                                      widget!.actpass!,
                                                      widget!.type!,
                                                      widget!.qn!))! <=
                                          4) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (_) => 0,
                                        );
                                      }
                                    }

                                    context.goNamed(
                                      CwordsvregverbsWidget.routeName,
                                      queryParameters: {
                                        'decl': serializeParam(
                                          widget!.decl,
                                          ParamType.int,
                                        ),
                                        'qn': serializeParam(
                                          widget!.qn,
                                          ParamType.int,
                                        ),
                                        'actpass': serializeParam(
                                          widget!.actpass,
                                          ParamType.int,
                                        ),
                                        'type': serializeParam(
                                          widget!.type,
                                          ParamType.int,
                                        ),
                                        'pres': serializeParam(
                                          widget!.pres,
                                          ParamType.String,
                                        ),
                                        'infi': serializeParam(
                                          widget!.infi,
                                          ParamType.String,
                                        ),
                                        'perf': serializeParam(
                                          widget!.perf,
                                          ParamType.String,
                                        ),
                                        'passperf': serializeParam(
                                          widget!.passperf,
                                          ParamType.String,
                                        ),
                                        'english': serializeParam(
                                          widget!.english,
                                          ParamType.String,
                                        ),
                                        'v1': serializeParam(
                                          widget!.v1,
                                          ParamType.String,
                                        ),
                                        'v2': serializeParam(
                                          widget!.v2,
                                          ParamType.String,
                                        ),
                                        'v3': serializeParam(
                                          widget!.v3,
                                          ParamType.String,
                                        ),
                                        'v4': serializeParam(
                                          widget!.v4,
                                          ParamType.String,
                                        ),
                                        'v5': serializeParam(
                                          widget!.v5,
                                          ParamType.String,
                                        ),
                                        'v6': serializeParam(
                                          _model.verbTextController.text,
                                          ParamType.String,
                                        ),
                                        'rgirg': serializeParam(
                                          widget!.rgirg,
                                          ParamType.int,
                                        ),
                                        'engp': serializeParam(
                                          widget!.engp,
                                          ParamType.String,
                                        ),
                                        'engpp': serializeParam(
                                          widget!.engpp,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    if (!FFAppState().irreghints) {
                                      if (widget!.type ==
                                          FFAppState().currentirregverbtype) {
                                        if (widget!.v1 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(0))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v2 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(1))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v3 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(2))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v4 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(3))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v5 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(4))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (_model.verbTextController.text ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(5))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (FFAppState()
                                                .irregverbqns
                                                .elementAtOrNull(
                                                    functions.misc4(
                                                        widget!.type!,
                                                        widget!.qn!)!)! <=
                                            4) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (_) => 0,
                                          );
                                          safeSetState(() {});
                                        }
                                      }
                                    }

                                    context.goNamed(
                                      CwordsvirgverbsWidget.routeName,
                                      queryParameters: {
                                        'decl': serializeParam(
                                          widget!.decl,
                                          ParamType.int,
                                        ),
                                        'qn': serializeParam(
                                          widget!.qn,
                                          ParamType.int,
                                        ),
                                        'actpass': serializeParam(
                                          widget!.actpass,
                                          ParamType.int,
                                        ),
                                        'type': serializeParam(
                                          widget!.type,
                                          ParamType.int,
                                        ),
                                        'pres': serializeParam(
                                          widget!.pres,
                                          ParamType.String,
                                        ),
                                        'infi': serializeParam(
                                          widget!.infi,
                                          ParamType.String,
                                        ),
                                        'perf': serializeParam(
                                          widget!.perf,
                                          ParamType.String,
                                        ),
                                        'passperf': serializeParam(
                                          widget!.passperf,
                                          ParamType.String,
                                        ),
                                        'english': serializeParam(
                                          widget!.english,
                                          ParamType.String,
                                        ),
                                        'v1': serializeParam(
                                          widget!.v1,
                                          ParamType.String,
                                        ),
                                        'v2': serializeParam(
                                          widget!.v2,
                                          ParamType.String,
                                        ),
                                        'v3': serializeParam(
                                          widget!.v3,
                                          ParamType.String,
                                        ),
                                        'v4': serializeParam(
                                          widget!.v4,
                                          ParamType.String,
                                        ),
                                        'v5': serializeParam(
                                          widget!.v5,
                                          ParamType.String,
                                        ),
                                        'v6': serializeParam(
                                          _model.verbTextController.text,
                                          ParamType.String,
                                        ),
                                        'rgirg': serializeParam(
                                          widget!.rgirg,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
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
                                  hintText: FFAppState().irreghints &&
                                          (widget!.rgirg == 1)
                                      ? (functions
                                          .irregverbsexc(
                                              widget!.pres,
                                              widget!.infi,
                                              widget!.perf,
                                              widget!.type!)
                                          ?.elementAtOrNull(5))
                                      : 'Enter Latin Translation',
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
                                validator: _model.verbTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget!.rgirg == 0) {
                                    if (!FFAppState().regverbspractice) {
                                      if (widget!.v1 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(0)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v2 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(1)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v3 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(2)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v4 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(3)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (widget!.v5 ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(4)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (_model.verbTextController.text ==
                                          functions
                                              .indicativeverbsfinal(
                                                  widget!.pres,
                                                  widget!.infi,
                                                  widget!.perf,
                                                  widget!.passperf,
                                                  widget!.actpass,
                                                  widget!.type)
                                              .elementAtOrNull(5)) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (e) => e + 1,
                                        );
                                      }
                                      if (FFAppState()
                                              .regverbsqn
                                              .elementAtOrNull(
                                                  functions.regverbsmisc1(
                                                      widget!.decl!,
                                                      widget!.actpass!,
                                                      widget!.type!,
                                                      widget!.qn!))! <=
                                          4) {
                                        FFAppState().updateRegverbsqnAtIndex(
                                          functions.regverbsmisc1(
                                              widget!.decl!,
                                              widget!.actpass!,
                                              widget!.type!,
                                              widget!.qn!),
                                          (_) => 0,
                                        );
                                      }
                                    }

                                    context.goNamed(
                                      CwordsvregverbsWidget.routeName,
                                      queryParameters: {
                                        'decl': serializeParam(
                                          widget!.decl,
                                          ParamType.int,
                                        ),
                                        'qn': serializeParam(
                                          widget!.qn,
                                          ParamType.int,
                                        ),
                                        'actpass': serializeParam(
                                          widget!.actpass,
                                          ParamType.int,
                                        ),
                                        'type': serializeParam(
                                          widget!.type,
                                          ParamType.int,
                                        ),
                                        'pres': serializeParam(
                                          widget!.pres,
                                          ParamType.String,
                                        ),
                                        'infi': serializeParam(
                                          widget!.infi,
                                          ParamType.String,
                                        ),
                                        'perf': serializeParam(
                                          widget!.perf,
                                          ParamType.String,
                                        ),
                                        'passperf': serializeParam(
                                          widget!.passperf,
                                          ParamType.String,
                                        ),
                                        'english': serializeParam(
                                          widget!.english,
                                          ParamType.String,
                                        ),
                                        'v1': serializeParam(
                                          widget!.v1,
                                          ParamType.String,
                                        ),
                                        'v2': serializeParam(
                                          widget!.v2,
                                          ParamType.String,
                                        ),
                                        'v3': serializeParam(
                                          widget!.v3,
                                          ParamType.String,
                                        ),
                                        'v4': serializeParam(
                                          widget!.v4,
                                          ParamType.String,
                                        ),
                                        'v5': serializeParam(
                                          widget!.v5,
                                          ParamType.String,
                                        ),
                                        'v6': serializeParam(
                                          _model.verbTextController.text,
                                          ParamType.String,
                                        ),
                                        'rgirg': serializeParam(
                                          widget!.rgirg,
                                          ParamType.int,
                                        ),
                                        'engp': serializeParam(
                                          widget!.engp,
                                          ParamType.String,
                                        ),
                                        'engpp': serializeParam(
                                          widget!.engpp,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    if (!FFAppState().irreghints) {
                                      if (widget!.type ==
                                          FFAppState().currentirregverbtype) {
                                        if (widget!.v1 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(0))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v2 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(1))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v3 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(2))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v4 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(3))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (widget!.v5 ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(4))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (_model.verbTextController.text ==
                                            (functions
                                                .irregverbsexc(
                                                    widget!.pres,
                                                    widget!.infi,
                                                    widget!.perf,
                                                    widget!.type!)
                                                ?.elementAtOrNull(5))) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (e) => e + 1,
                                          );
                                        }
                                        if (FFAppState()
                                                .irregverbqns
                                                .elementAtOrNull(
                                                    functions.misc4(
                                                        widget!.type!,
                                                        widget!.qn!)!)! <=
                                            4) {
                                          FFAppState()
                                              .updateIrregverbqnsAtIndex(
                                            functions.misc4(
                                                widget!.type!, widget!.qn!)!,
                                            (_) => 0,
                                          );
                                          safeSetState(() {});
                                        }
                                      }
                                    }

                                    context.goNamed(
                                      CwordsvirgverbsWidget.routeName,
                                      queryParameters: {
                                        'decl': serializeParam(
                                          widget!.decl,
                                          ParamType.int,
                                        ),
                                        'qn': serializeParam(
                                          widget!.qn,
                                          ParamType.int,
                                        ),
                                        'actpass': serializeParam(
                                          widget!.actpass,
                                          ParamType.int,
                                        ),
                                        'type': serializeParam(
                                          widget!.type,
                                          ParamType.int,
                                        ),
                                        'pres': serializeParam(
                                          widget!.pres,
                                          ParamType.String,
                                        ),
                                        'infi': serializeParam(
                                          widget!.infi,
                                          ParamType.String,
                                        ),
                                        'perf': serializeParam(
                                          widget!.perf,
                                          ParamType.String,
                                        ),
                                        'passperf': serializeParam(
                                          widget!.passperf,
                                          ParamType.String,
                                        ),
                                        'english': serializeParam(
                                          widget!.english,
                                          ParamType.String,
                                        ),
                                        'v1': serializeParam(
                                          widget!.v1,
                                          ParamType.String,
                                        ),
                                        'v2': serializeParam(
                                          widget!.v2,
                                          ParamType.String,
                                        ),
                                        'v3': serializeParam(
                                          widget!.v3,
                                          ParamType.String,
                                        ),
                                        'v4': serializeParam(
                                          widget!.v4,
                                          ParamType.String,
                                        ),
                                        'v5': serializeParam(
                                          widget!.v5,
                                          ParamType.String,
                                        ),
                                        'v6': serializeParam(
                                          _model.verbTextController.text,
                                          ParamType.String,
                                        ),
                                        'rgirg': serializeParam(
                                          widget!.rgirg,
                                          ParamType.int,
                                        ),
                                      }.withoutNulls,
                                    );
                                  }
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
