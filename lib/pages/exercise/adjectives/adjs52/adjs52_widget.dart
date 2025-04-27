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
import 'adjs52_model.dart';
export 'adjs52_model.dart';

class Adjs52Widget extends StatefulWidget {
  const Adjs52Widget({
    super.key,
    required this.word,
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
    required this.fem,
    required this.neu,
    required this.qn,
  });

  final String? word;
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
  final String? fem;
  final String? neu;
  final int? qn;

  static String routeName = 'adjs52';
  static String routePath = '/adjs52';

  @override
  State<Adjs52Widget> createState() => _Adjs52WidgetState();
}

class _Adjs52WidgetState extends State<Adjs52Widget> {
  late Adjs52Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Adjs52Model());

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
            'Adjectives Practice',
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
                  if (FFAppState().adjpractice)
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget!.word!,
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
                              text: widget!.verbtype == 3
                                  ? widget!.neu!
                                  : widget!.fem!,
                              style: GoogleFonts.getFont(
                                'Raleway',
                                color: Colors.white,
                                fontSize: 32.0,
                              ),
                            ),
                            TextSpan(
                              text: (widget!.verbtype == 2) ||
                                      (widget!.verbtype == 3)
                                  ? ' '
                                  : ', ',
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: (widget!.verbtype == 2) ||
                                      (widget!.verbtype == 3)
                                  ? ' '
                                  : widget!.neu!,
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
                  if (FFAppState().adjpractice)
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: (functions
                                  .adjhints(
                                      widget!.verbtype!,
                                      widget!.gendertype!,
                                      widget!.word!,
                                      widget!.fem!,
                                      widget!.neu!)!
                                  .elementAtOrNull(27))!,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: (functions
                                                .adjhints(
                                                    widget!.verbtype!,
                                                    widget!.gendertype!,
                                                    widget!.word!,
                                                    widget!.fem!,
                                                    widget!.neu!)
                                                ?.elementAtOrNull(28)) ==
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
                                  .adjhints(
                                      widget!.verbtype!,
                                      widget!.gendertype!,
                                      widget!.word!,
                                      widget!.fem!,
                                      widget!.neu!)!
                                  .elementAtOrNull(28))!,
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
                                  .adjhints(
                                      widget!.verbtype!,
                                      widget!.gendertype!,
                                      widget!.word!,
                                      widget!.fem!,
                                      widget!.neu!)!
                                  .elementAtOrNull(29))!,
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
                                  if (!FFAppState().adjpractice) {
                                    if (widget!.pn11 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(0))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn12 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(1))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn21 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(2))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn22 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(3))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn31 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(4))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn32 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(5))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn41 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(6))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn42 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(7))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn51 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(8))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (_model.nomsingTextController.text ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(9))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (FFAppState().adjqn.elementAtOrNull(
                                            functions.adjmisc(
                                                widget!.verbtype!,
                                                widget!.gendertype!,
                                                widget!.qn!)!)! <=
                                        7) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (_) => 0,
                                      );
                                    }
                                  }

                                  context.goNamed(
                                    AdjscwordsWidget.routeName,
                                    queryParameters: {
                                      'word': serializeParam(
                                        widget!.word,
                                        ParamType.String,
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
                                      'fem': serializeParam(
                                        widget!.fem,
                                        ParamType.String,
                                      ),
                                      'neu': serializeParam(
                                        widget!.neu,
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
                                  if (!FFAppState().adjpractice) {
                                    if (widget!.pn11 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(0))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn12 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(1))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn21 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(2))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn22 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(3))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn31 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(4))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn32 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(5))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn41 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(6))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn42 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(7))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (widget!.pn51 ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(8))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (_model.nomsingTextController.text ==
                                        (functions
                                            .adjexc(
                                                widget!.word!,
                                                widget!.fem!,
                                                widget!.neu!,
                                                widget!.verbtype!,
                                                widget!.gendertype!)
                                            ?.elementAtOrNull(9))) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (e) => e + 1,
                                      );
                                    }
                                    if (FFAppState().adjqn.elementAtOrNull(
                                            functions.adjmisc(
                                                widget!.verbtype!,
                                                widget!.gendertype!,
                                                widget!.qn!)!)! <=
                                        7) {
                                      FFAppState().updateAdjqnAtIndex(
                                        functions.adjmisc(widget!.verbtype!,
                                            widget!.gendertype!, widget!.qn!)!,
                                        (_) => 0,
                                      );
                                    }
                                  }

                                  context.goNamed(
                                    AdjscwordsWidget.routeName,
                                    queryParameters: {
                                      'word': serializeParam(
                                        widget!.word,
                                        ParamType.String,
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
                                      'fem': serializeParam(
                                        widget!.fem,
                                        ParamType.String,
                                      ),
                                      'neu': serializeParam(
                                        widget!.neu,
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
