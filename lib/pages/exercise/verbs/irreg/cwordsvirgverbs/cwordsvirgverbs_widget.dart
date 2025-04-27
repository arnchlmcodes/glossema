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
import 'cwordsvirgverbs_model.dart';
export 'cwordsvirgverbs_model.dart';

class CwordsvirgverbsWidget extends StatefulWidget {
  const CwordsvirgverbsWidget({
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
    required this.v6,
    required this.rgirg,
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
  final String? v6;
  final int? rgirg;

  static String routeName = 'cwordsvirgverbs';
  static String routePath = '/cwordsvirgverbs';

  @override
  State<CwordsvirgverbsWidget> createState() => _CwordsvirgverbsWidgetState();
}

class _CwordsvirgverbsWidgetState extends State<CwordsvirgverbsWidget> {
  late CwordsvirgverbsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CwordsvirgverbsModel());

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
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
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Container(
                        width: 393.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF81201A),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(14.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Irregular ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 34.0,
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
                                              fontSize: 34.0,
                                            ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 34.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 337.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: functions
                                                    .irregverbshints(
                                                        widget!.infi!,
                                                        widget!.type!)
                                                    .elementAtOrNull(0)!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
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
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Your Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.v1,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v1 ==
                                                            (functions
                                                                .irregverbsexc(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .type!)
                                                                ?.elementAtOrNull(
                                                                    0))
                                                        ? Color(0xFF5FFF06)
                                                        : Color(0xFFFF0000),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Correct Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    functions
                                                        .irregverbsexc(
                                                            widget!.pres,
                                                            widget!.infi,
                                                            widget!.perf,
                                                            widget!.type!)
                                                        ?.elementAtOrNull(0),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Color(0xFF5FFF06),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 337.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: functions
                                                    .irregverbshints(
                                                        widget!.infi!,
                                                        widget!.type!)
                                                    .elementAtOrNull(1)!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
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
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Your Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.v2,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v2 ==
                                                            (functions
                                                                .irregverbsexc(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .type!)
                                                                ?.elementAtOrNull(
                                                                    1))
                                                        ? Color(0xFF5FFF06)
                                                        : Color(0xFFFF0000),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Correct Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    functions
                                                        .irregverbsexc(
                                                            widget!.pres,
                                                            widget!.infi,
                                                            widget!.perf,
                                                            widget!.type!)
                                                        ?.elementAtOrNull(1),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Color(0xFF5FFF06),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 337.0,
                                    height: 197.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: functions
                                                    .irregverbshints(
                                                        widget!.infi!,
                                                        widget!.type!)
                                                    .elementAtOrNull(2)!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
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
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Your Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.v3,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v3 ==
                                                            (functions
                                                                .irregverbsexc(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .type!)
                                                                ?.elementAtOrNull(
                                                                    2))
                                                        ? Color(0xFF5FFF06)
                                                        : Color(0xFFFF0000),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Correct Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    functions
                                                        .irregverbsexc(
                                                            widget!.pres,
                                                            widget!.infi,
                                                            widget!.perf,
                                                            widget!.type!)
                                                        ?.elementAtOrNull(2),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Color(0xFF5FFF06),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 337.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: functions
                                                    .irregverbshints(
                                                        widget!.infi!,
                                                        widget!.type!)
                                                    .elementAtOrNull(3)!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
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
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Your Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.v4,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v4 ==
                                                            (functions
                                                                .irregverbsexc(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .type!)
                                                                ?.elementAtOrNull(
                                                                    3))
                                                        ? Color(0xFF5FFF06)
                                                        : Color(0xFFFF0000),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Correct Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    functions
                                                        .irregverbsexc(
                                                            widget!.pres,
                                                            widget!.infi,
                                                            widget!.perf,
                                                            widget!.type!)
                                                        ?.elementAtOrNull(3),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Color(0xFF5FFF06),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 337.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: functions
                                                    .irregverbshints(
                                                        widget!.infi!,
                                                        widget!.type!)
                                                    .elementAtOrNull(4)!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
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
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Your Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.v5,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v5 ==
                                                            (functions
                                                                .irregverbsexc(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .type!)
                                                                ?.elementAtOrNull(
                                                                    4))
                                                        ? Color(0xFF5FFF06)
                                                        : Color(0xFFFF0000),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Correct Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    functions
                                                        .irregverbsexc(
                                                            widget!.pres,
                                                            widget!.infi,
                                                            widget!.perf,
                                                            widget!.type!)
                                                        ?.elementAtOrNull(4),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Color(0xFF5FFF06),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Container(
                                    width: 337.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: functions
                                                    .irregverbshints(
                                                        widget!.infi!,
                                                        widget!.type!)
                                                    .elementAtOrNull(5)!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 34.0,
                                                          letterSpacing: 0.0,
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
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Your Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    widget!.v6,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v6 ==
                                                            (functions
                                                                .irregverbsexc(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .type!)
                                                                ?.elementAtOrNull(
                                                                    5))
                                                        ? Color(0xFF5FFF06)
                                                        : Color(0xFFFF0000),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Correct Answer: ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 22.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    functions
                                                        .irregverbsexc(
                                                            widget!.pres,
                                                            widget!.infi,
                                                            widget!.perf,
                                                            widget!.type!)
                                                        ?.elementAtOrNull(5),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Color(0xFF5FFF06),
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (widget!.type ==
                                            FFAppState().currentirregverbtype) {
                                          if ((FFAppState().irregverbqns.elementAtOrNull(functions
                                                      .misc5(widget!.type!,
                                                          widget!.qn!)
                                                      .elementAtOrNull(0)!)! >
                                                  4) &&
                                              (FFAppState().irregverbqns.elementAtOrNull(functions
                                                      .misc5(widget!.type!,
                                                          widget!.qn!)
                                                      .elementAtOrNull(1)!)! >
                                                  4) &&
                                              (FFAppState().irregverbqns.elementAtOrNull(functions
                                                      .misc5(widget!.type!,
                                                          widget!.qn!)
                                                      .elementAtOrNull(2)!)! >
                                                  4) &&
                                              (FFAppState()
                                                      .irregverbqns
                                                      .elementAtOrNull(functions
                                                          .misc5(widget!.type!,
                                                              widget!.qn!)
                                                          .elementAtOrNull(
                                                              3)!)! >
                                                  4) &&
                                              (FFAppState()
                                                      .irregverbqns
                                                      .elementAtOrNull(functions
                                                          .misc5(widget!.type!,
                                                              widget!.qn!)
                                                          .elementAtOrNull(
                                                              4)!)! >
                                                  4)) {
                                            FFAppState().currentirregverbtype =
                                                FFAppState()
                                                        .currentirregverbtype +
                                                    1;
                                            FFAppState()
                                                .updateUnlockedirregverbsAtIndex(
                                              (widget!.type!) + 1,
                                              (_) => true,
                                            );
                                          }
                                        }

                                        context.goNamed(
                                          IrregverbspointsWidget.routeName,
                                          queryParameters: {
                                            'qn': serializeParam(
                                              widget!.qn,
                                              ParamType.int,
                                            ),
                                            'type': serializeParam(
                                              widget!.type,
                                              ParamType.int,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      text: 'Next',
                                      options: FFButtonOptions(
                                        width: 183.0,
                                        height: 57.0,
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
                                        borderRadius:
                                            BorderRadius.circular(24.0),
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
