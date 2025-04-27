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
import 'pronouns52_model.dart';
export 'pronouns52_model.dart';

class Pronouns52Widget extends StatefulWidget {
  const Pronouns52Widget({
    super.key,
    required this.word,
    required this.genderexists,
    required this.gendertype,
    required this.engword,
    required this.verbtype,
    required this.pn11,
    required this.pn12,
    required this.pn21,
    required this.pn22,
    required this.pn31,
    required this.pn32,
    required this.pn41,
    required this.pn42,
    required this.pn51,
    required this.qn,
  });

  final String? word;
  final int? genderexists;
  final int? gendertype;
  final String? engword;
  final int? verbtype;
  final String? pn11;
  final String? pn12;
  final String? pn21;
  final String? pn22;
  final String? pn31;
  final String? pn32;
  final String? pn41;
  final String? pn42;
  final String? pn51;
  final int? qn;

  static String routeName = 'pronouns52';
  static String routePath = '/pronouns52';

  @override
  State<Pronouns52Widget> createState() => _Pronouns52WidgetState();
}

class _Pronouns52WidgetState extends State<Pronouns52Widget> {
  late Pronouns52Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pronouns52Model());

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
            'Pronouns Practice',
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
                                  'Ablative Plural',
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
                                        widget!.engword,
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
                                controller: _model.nomsingTextController,
                                focusNode: _model.nomsingFocusNode,
                                onFieldSubmitted: (_) async {
                                  if (FFAppState().pronounpractice != true) {
                                    if (widget!.pn11 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(0))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn12 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(1))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn21 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(2))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn22 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(3))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn31 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(4))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn32 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(5))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn41 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(6))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn42 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(7))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn51 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(8))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (_model.nomsingTextController.text ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(9))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (FFAppState().pronounsqn.elementAtOrNull(
                                            functions.pnmiscqn(
                                                widget!.qn!,
                                                widget!.gendertype!,
                                                widget!.verbtype!)!)! <=
                                        7) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (_) => 100,
                                      );
                                    }
                                  }

                                  context.goNamed(
                                    PronounscrwordsWidget.routeName,
                                    queryParameters: {
                                      'word': serializeParam(
                                        widget!.word,
                                        ParamType.String,
                                      ),
                                      'genderexists': serializeParam(
                                        widget!.genderexists,
                                        ParamType.int,
                                      ),
                                      'gendertype': serializeParam(
                                        widget!.gendertype,
                                        ParamType.int,
                                      ),
                                      'engword': serializeParam(
                                        widget!.engword,
                                        ParamType.String,
                                      ),
                                      'verbtype': serializeParam(
                                        widget!.verbtype,
                                        ParamType.int,
                                      ),
                                      'pn11': serializeParam(
                                        widget!.pn11,
                                        ParamType.String,
                                      ),
                                      'pn12': serializeParam(
                                        widget!.pn12,
                                        ParamType.String,
                                      ),
                                      'pn21': serializeParam(
                                        widget!.pn21,
                                        ParamType.String,
                                      ),
                                      'pn22': serializeParam(
                                        widget!.pn22,
                                        ParamType.String,
                                      ),
                                      'pn31': serializeParam(
                                        widget!.pn31,
                                        ParamType.String,
                                      ),
                                      'pn32': serializeParam(
                                        widget!.pn32,
                                        ParamType.String,
                                      ),
                                      'pn41': serializeParam(
                                        widget!.pn41,
                                        ParamType.String,
                                      ),
                                      'pn42': serializeParam(
                                        widget!.pn42,
                                        ParamType.String,
                                      ),
                                      'pn51': serializeParam(
                                        widget!.pn51,
                                        ParamType.String,
                                      ),
                                      'pn52': serializeParam(
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
                                  hintText: FFAppState().pronounpractice
                                      ? (functions
                                          .pronounsexc(widget!.word!,
                                              widget!.gendertype!)
                                          ?.elementAtOrNull(9))
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
                                validator: _model.nomsingTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (FFAppState().pronounpractice != true) {
                                    if (widget!.pn11 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(0))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn12 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(1))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn21 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(2))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn22 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(3))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn31 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(4))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn32 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(5))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn41 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(6))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn42 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(7))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn51 ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(8))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (_model.nomsingTextController.text ==
                                        (functions
                                            .pronounsexc(widget!.word!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(9))) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (FFAppState().pronounsqn.elementAtOrNull(
                                            functions.pnmiscqn(
                                                widget!.qn!,
                                                widget!.gendertype!,
                                                widget!.verbtype!)!)! <=
                                        7) {
                                      FFAppState().updatePronounsqnAtIndex(
                                        functions.pnmiscqn(
                                            widget!.qn!,
                                            widget!.gendertype!,
                                            widget!.verbtype!)!,
                                        (_) => 0,
                                      );
                                    }
                                  }

                                  context.goNamed(
                                    PronounscrwordsWidget.routeName,
                                    queryParameters: {
                                      'word': serializeParam(
                                        widget!.word,
                                        ParamType.String,
                                      ),
                                      'genderexists': serializeParam(
                                        widget!.genderexists,
                                        ParamType.int,
                                      ),
                                      'gendertype': serializeParam(
                                        widget!.gendertype,
                                        ParamType.int,
                                      ),
                                      'engword': serializeParam(
                                        widget!.engword,
                                        ParamType.String,
                                      ),
                                      'verbtype': serializeParam(
                                        widget!.verbtype,
                                        ParamType.int,
                                      ),
                                      'pn11': serializeParam(
                                        widget!.pn11,
                                        ParamType.String,
                                      ),
                                      'pn12': serializeParam(
                                        widget!.pn12,
                                        ParamType.String,
                                      ),
                                      'pn21': serializeParam(
                                        widget!.pn21,
                                        ParamType.String,
                                      ),
                                      'pn22': serializeParam(
                                        widget!.pn22,
                                        ParamType.String,
                                      ),
                                      'pn31': serializeParam(
                                        widget!.pn31,
                                        ParamType.String,
                                      ),
                                      'pn32': serializeParam(
                                        widget!.pn32,
                                        ParamType.String,
                                      ),
                                      'pn41': serializeParam(
                                        widget!.pn41,
                                        ParamType.String,
                                      ),
                                      'pn42': serializeParam(
                                        widget!.pn42,
                                        ParamType.String,
                                      ),
                                      'pn51': serializeParam(
                                        widget!.pn51,
                                        ParamType.String,
                                      ),
                                      'pn52': serializeParam(
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
