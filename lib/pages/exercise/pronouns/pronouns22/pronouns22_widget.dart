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
import 'pronouns22_model.dart';
export 'pronouns22_model.dart';

class Pronouns22Widget extends StatefulWidget {
  const Pronouns22Widget({
    super.key,
    required this.word,
    required this.genderexists,
    required this.gendertype,
    required this.engword,
    required this.verbtype,
    required this.pn11,
    required this.pn12,
    required this.pn21,
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
  final int? qn;

  static String routeName = 'pronouns22';
  static String routePath = '/pronouns22';

  @override
  State<Pronouns22Widget> createState() => _Pronouns22WidgetState();
}

class _Pronouns22WidgetState extends State<Pronouns22Widget> {
  late Pronouns22Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pronouns22Model());

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
                                  'Genitive Plural',
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
                                  context.pushNamed(
                                    Pronouns31Widget.routeName,
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
                                          ?.elementAtOrNull(3))
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
                                  context.pushNamed(
                                    Pronouns31Widget.routeName,
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
