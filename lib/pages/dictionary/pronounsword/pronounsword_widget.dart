import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pronounsword_model.dart';
export 'pronounsword_model.dart';

class PronounswordWidget extends StatefulWidget {
  const PronounswordWidget({
    super.key,
    required this.word,
    required this.trans,
    required this.ns,
    required this.np,
    required this.gs,
    required this.gp,
    required this.ds,
    required this.dp,
    required this.as,
    required this.ap,
    required this.abs,
    required this.abp,
  });

  final String? word;
  final String? trans;
  final String? ns;
  final String? np;
  final String? gs;
  final String? gp;
  final String? ds;
  final String? dp;
  final String? as;
  final String? ap;
  final String? abs;
  final String? abp;

  static String routeName = 'pronounsword';
  static String routePath = '/pronounsword';

  @override
  State<PronounswordWidget> createState() => _PronounswordWidgetState();
}

class _PronounswordWidgetState extends State<PronounswordWidget> {
  late PronounswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PronounswordModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF81201A),
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(24.0),
                        border: Border.all(
                          color: Color(0xFFFFD700),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Word:  ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFFAFFCF),
                                              fontSize: 35.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          widget!.word,
                                          '-',
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nothing You Could Do',
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Translation:  \n',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFFAFFCF),
                                              fontSize: 35.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          widget!.trans,
                                          '-',
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Nothing You Could Do',
                                          color: Colors.white,
                                          fontSize: 35.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(18.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    ProformsWidget.routeName,
                                    queryParameters: {
                                      'word': serializeParam(
                                        widget!.word,
                                        ParamType.String,
                                      ),
                                      'ns': serializeParam(
                                        widget!.ns,
                                        ParamType.String,
                                      ),
                                      'np': serializeParam(
                                        widget!.np,
                                        ParamType.String,
                                      ),
                                      'gs': serializeParam(
                                        widget!.gs,
                                        ParamType.String,
                                      ),
                                      'gp': serializeParam(
                                        widget!.gp,
                                        ParamType.String,
                                      ),
                                      'ds': serializeParam(
                                        widget!.ds,
                                        ParamType.String,
                                      ),
                                      'dp': serializeParam(
                                        widget!.dp,
                                        ParamType.String,
                                      ),
                                      'as': serializeParam(
                                        widget!.as,
                                        ParamType.String,
                                      ),
                                      'ap': serializeParam(
                                        widget!.ap,
                                        ParamType.String,
                                      ),
                                      'abs': serializeParam(
                                        widget!.abs,
                                        ParamType.String,
                                      ),
                                      'abp': serializeParam(
                                        widget!.abp,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                text: 'Look at Pronoun forms',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF81201A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Color(0xFFFFD700),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
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
