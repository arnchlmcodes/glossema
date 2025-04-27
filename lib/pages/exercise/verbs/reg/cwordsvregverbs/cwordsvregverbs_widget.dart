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
import 'cwordsvregverbs_model.dart';
export 'cwordsvregverbs_model.dart';

class CwordsvregverbsWidget extends StatefulWidget {
  const CwordsvregverbsWidget({
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
  final String? v6;
  final int? rgirg;
  final String? engp;
  final String? engpp;

  static String routeName = 'cwordsvregverbs';
  static String routePath = '/cwordsvregverbs';

  @override
  State<CwordsvregverbsWidget> createState() => _CwordsvregverbsWidgetState();
}

class _CwordsvregverbsWidgetState extends State<CwordsvregverbsWidget> {
  late CwordsvregverbsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CwordsvregverbsModel());

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
                                            text: widget!.actpass == 0
                                                ? 'Indicative Active '
                                                : 'Indicative Passive ',
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
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: () {
                                                    if (widget!.rgirg == 1) {
                                                      return '';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type != 2)) {
                                                      return 'I ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type == 2)) {
                                                      return 'I will ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 0)) {
                                                      return 'I am ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 1)) {
                                                      return 'I was ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 2)) {
                                                      return 'I will be ';
                                                    } else {
                                                      return '';
                                                    }
                                                  }(),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 34.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    () {
                                                      if (widget!.rgirg == 1) {
                                                        return functions
                                                            .irregverbshints(
                                                                widget!.infi!,
                                                                widget!.type!)
                                                            .elementAtOrNull(0);
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type != 1)) {
                                                        return widget!.english;
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type == 1)) {
                                                        return widget!.engp;
                                                      } else if (widget!
                                                              .actpass ==
                                                          1) {
                                                        return widget!.engpp;
                                                      } else {
                                                        return widget!.engp;
                                                      }
                                                    }(),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 34.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
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
                                                    widget!.v1,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v1 ==
                                                            functions
                                                                .indicativeverbsfinal(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .passperf,
                                                                    widget!
                                                                        .actpass,
                                                                    widget!
                                                                        .type)
                                                                .elementAtOrNull(
                                                                    0)
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
                                                  text: functions
                                                      .indicativeverbsfinal(
                                                          widget!.pres,
                                                          widget!.infi,
                                                          widget!.perf,
                                                          widget!.passperf,
                                                          widget!.actpass,
                                                          widget!.type)
                                                      .elementAtOrNull(0)!,
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
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: () {
                                                    if (widget!.rgirg == 1) {
                                                      return '';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type != 2)) {
                                                      return 'We ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type == 2)) {
                                                      return 'We will ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 0)) {
                                                      return 'We are ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 1)) {
                                                      return 'We were ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 2)) {
                                                      return 'We will be ';
                                                    } else {
                                                      return '';
                                                    }
                                                  }(),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 34.0,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: valueOrDefault<String>(
                                                    () {
                                                      if (widget!.rgirg == 1) {
                                                        return functions
                                                            .irregverbshints(
                                                                widget!.infi!,
                                                                widget!.type!)
                                                            .elementAtOrNull(1);
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type != 1)) {
                                                        return widget!.english;
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type == 1)) {
                                                        return widget!.engp;
                                                      } else if (widget!
                                                              .actpass ==
                                                          1) {
                                                        return widget!.engpp;
                                                      } else {
                                                        return widget!.engp;
                                                      }
                                                    }(),
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 34.0,
                                                  ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
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
                                                    widget!.v2,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v2 ==
                                                            functions
                                                                .indicativeverbsfinal(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .passperf,
                                                                    widget!
                                                                        .actpass,
                                                                    widget!
                                                                        .type)
                                                                .elementAtOrNull(
                                                                    1)
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
                                                  text: functions
                                                      .indicativeverbsfinal(
                                                          widget!.pres,
                                                          widget!.infi,
                                                          widget!.perf,
                                                          widget!.passperf,
                                                          widget!.actpass,
                                                          widget!.type)
                                                      .elementAtOrNull(1)!,
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
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: () {
                                                    if (widget!.rgirg == 1) {
                                                      return '';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type != 2)) {
                                                      return 'You ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type == 2)) {
                                                      return 'You will ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 0)) {
                                                      return 'You are ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 1)) {
                                                      return 'You were ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 2)) {
                                                      return 'You will be ';
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
                                                            .irregverbshints(
                                                                widget!.infi!,
                                                                widget!.type!)
                                                            .elementAtOrNull(2);
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type != 1)) {
                                                        return widget!.english;
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type == 1)) {
                                                        return widget!.engp;
                                                      } else if (widget!
                                                              .actpass ==
                                                          1) {
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 34.0,
                                                        letterSpacing: 0.0,
                                                      ),
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
                                                    widget!.v3,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v3 ==
                                                            functions
                                                                .indicativeverbsfinal(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .passperf,
                                                                    widget!
                                                                        .actpass,
                                                                    widget!
                                                                        .type)
                                                                .elementAtOrNull(
                                                                    2)
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
                                                  text: functions
                                                      .indicativeverbsfinal(
                                                          widget!.pres,
                                                          widget!.infi,
                                                          widget!.perf,
                                                          widget!.passperf,
                                                          widget!.actpass,
                                                          widget!.type)
                                                      .elementAtOrNull(2)!,
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
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: () {
                                                    if (widget!.rgirg == 1) {
                                                      return '';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type != 2)) {
                                                      return 'You (pl.) ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type == 2)) {
                                                      return 'You will (pl.) ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 0)) {
                                                      return 'You are (pl.) ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 1)) {
                                                      return 'You were (pl.) ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 2)) {
                                                      return 'You will be (pl.) ';
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
                                                            .irregverbshints(
                                                                widget!.infi!,
                                                                widget!.type!)
                                                            .elementAtOrNull(3);
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type != 1)) {
                                                        return widget!.english;
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type == 1)) {
                                                        return widget!.engp;
                                                      } else if (widget!
                                                              .actpass ==
                                                          1) {
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 34.0,
                                                        letterSpacing: 0.0,
                                                      ),
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
                                                    widget!.v4,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v4 ==
                                                            functions
                                                                .indicativeverbsfinal(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .passperf,
                                                                    widget!
                                                                        .actpass,
                                                                    widget!
                                                                        .type)
                                                                .elementAtOrNull(
                                                                    3)
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
                                                  text: functions
                                                      .indicativeverbsfinal(
                                                          widget!.pres,
                                                          widget!.infi,
                                                          widget!.perf,
                                                          widget!.passperf,
                                                          widget!.actpass,
                                                          widget!.type)
                                                      .elementAtOrNull(3)!,
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
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: () {
                                                    if (widget!.rgirg == 1) {
                                                      return '';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type != 2)) {
                                                      return 'He/She/It ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type == 2)) {
                                                      return 'He/She/It will ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 0)) {
                                                      return 'He/She/It is ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 1)) {
                                                      return 'He/She/It was  ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 2)) {
                                                      return 'He/She/It will be ';
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
                                                            .irregverbshints(
                                                                widget!.infi!,
                                                                widget!.type!)
                                                            .elementAtOrNull(4);
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type != 1)) {
                                                        return widget!.english;
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type == 1)) {
                                                        return widget!.engp;
                                                      } else if (widget!
                                                              .actpass ==
                                                          1) {
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 34.0,
                                                        letterSpacing: 0.0,
                                                      ),
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
                                                    widget!.v5,
                                                    '- ',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.v5 ==
                                                            functions
                                                                .indicativeverbsfinal(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .passperf,
                                                                    widget!
                                                                        .actpass,
                                                                    widget!
                                                                        .type)
                                                                .elementAtOrNull(
                                                                    4)
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
                                                  text: functions
                                                      .indicativeverbsfinal(
                                                          widget!.pres,
                                                          widget!.infi,
                                                          widget!.perf,
                                                          widget!.passperf,
                                                          widget!.actpass,
                                                          widget!.type)
                                                      .elementAtOrNull(4)!,
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
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: () {
                                                    if (widget!.rgirg == 1) {
                                                      return '';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type != 2)) {
                                                      return 'They ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            0) &&
                                                        (widget!.type == 2)) {
                                                      return 'They will ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 0)) {
                                                      return 'They are ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
                                                        (widget!.type == 1)) {
                                                      return 'They were ';
                                                    } else if ((widget!
                                                                .actpass ==
                                                            1) &&
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
                                                            .irregverbshints(
                                                                widget!.infi!,
                                                                widget!.type!)
                                                            .elementAtOrNull(5);
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type != 1)) {
                                                        return widget!.english;
                                                      } else if ((widget!
                                                                  .actpass ==
                                                              0) &&
                                                          (widget!.type == 1)) {
                                                        return widget!.engp;
                                                      } else if (widget!
                                                              .actpass ==
                                                          1) {
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 34.0,
                                                        letterSpacing: 0.0,
                                                      ),
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
                                                            functions
                                                                .indicativeverbsfinal(
                                                                    widget!
                                                                        .pres,
                                                                    widget!
                                                                        .infi,
                                                                    widget!
                                                                        .perf,
                                                                    widget!
                                                                        .passperf,
                                                                    widget!
                                                                        .actpass,
                                                                    widget!
                                                                        .type)
                                                                .elementAtOrNull(
                                                                    5)
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
                                                  text: functions
                                                      .indicativeverbsfinal(
                                                          widget!.pres,
                                                          widget!.infi,
                                                          widget!.perf,
                                                          widget!.passperf,
                                                          widget!.actpass,
                                                          widget!.type)
                                                      .elementAtOrNull(5)!,
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
                                        if ((FFAppState().regverbsqn.elementAtOrNull(functions
                                                    .misc2(functions.regverbsmisc1(
                                                        widget!.decl!,
                                                        widget!.actpass!,
                                                        widget!.type!,
                                                        widget!.qn!))
                                                    .elementAtOrNull(0)!)! >=
                                                5) &&
                                            (FFAppState().regverbsqn.elementAtOrNull((functions
                                                    .regverbmisc3(
                                                        functions.regverbsmisc1(
                                                            widget!.decl!,
                                                            widget!.actpass!,
                                                            widget!.type!,
                                                            widget!.qn!),
                                                        0)!
                                                    .elementAtOrNull(1))!)! >=
                                                5) &&
                                            (FFAppState()
                                                    .regverbsqn
                                                    .elementAtOrNull((functions
                                                        .regverbmisc3(
                                                            functions.regverbsmisc1(widget!.decl!, widget!.actpass!, widget!.type!, widget!.qn!),
                                                            0)!
                                                        .elementAtOrNull(2))!)! >=
                                                5)) {
                                          FFAppState()
                                              .updateUnlockedregverbtypeAtIndex(
                                            (functions.regverbsmisc2(
                                                    functions.regverbsmisc1(
                                                        widget!.decl!,
                                                        widget!.actpass!,
                                                        widget!.type!,
                                                        widget!.qn!),
                                                    0)!) +
                                                1,
                                            (_) => true,
                                          );
                                          FFAppState().currentregverbtype =
                                              FFAppState().currentregverbtype +
                                                  1;
                                        }
                                        if ((FFAppState().unlockedregverbtype.elementAtOrNull((functions
                                                    .regverbmisc3(
                                                        functions.regverbsmisc1(
                                                            widget!.decl!,
                                                            widget!.actpass!,
                                                            widget!.type!,
                                                            widget!.qn!),
                                                        1)!
                                                    .elementAtOrNull(0))!) ==
                                                true) &&
                                            (FFAppState().unlockedregverbtype.elementAtOrNull((functions
                                                    .regverbmisc3(
                                                        functions.regverbsmisc1(
                                                            widget!.decl!,
                                                            widget!.actpass!,
                                                            widget!.type!,
                                                            widget!.qn!),
                                                        1)!
                                                    .elementAtOrNull(1))!) ==
                                                true) &&
                                            (FFAppState()
                                                    .unlockedregverbtype
                                                    .elementAtOrNull((functions
                                                        .regverbmisc3(
                                                            functions.regverbsmisc1(widget!.decl!, widget!.actpass!, widget!.type!, widget!.qn!), 1)!
                                                        .elementAtOrNull(2))!) ==
                                                true) &&
                                            (FFAppState().unlockedregverbtype.elementAtOrNull(functions.misc3((functions.regverbmisc3(functions.regverbsmisc1(widget!.decl!, widget!.actpass!, widget!.type!, widget!.qn!), 1)!.elementAtOrNull(2))!)) == true)) {
                                          FFAppState()
                                              .updateUnlockedregverbactpassAtIndex(
                                            (functions.regverbsmisc2(
                                                    functions.regverbsmisc1(
                                                        widget!.decl!,
                                                        widget!.actpass!,
                                                        widget!.type!,
                                                        widget!.qn!),
                                                    1)!) +
                                                1,
                                            (_) => true,
                                          );
                                          FFAppState()
                                                  .currenregverbactpasstype =
                                              FFAppState()
                                                      .currenregverbactpasstype +
                                                  1;
                                        }
                                        if ((FFAppState().unlockedregverbactpass.elementAtOrNull((functions
                                                    .regverbmisc3(
                                                        functions.regverbsmisc1(
                                                            widget!.decl!,
                                                            widget!.actpass!,
                                                            widget!.type!,
                                                            widget!.qn!),
                                                        2)!
                                                    .elementAtOrNull(0))!) ==
                                                true) &&
                                            (FFAppState().unlockedregverbactpass.elementAtOrNull((functions
                                                    .regverbmisc3(
                                                        functions.regverbsmisc1(
                                                            widget!.decl!,
                                                            widget!.actpass!,
                                                            widget!.type!,
                                                            widget!.qn!),
                                                        2)!
                                                    .elementAtOrNull(1))!) ==
                                                true) &&
                                            (FFAppState().unlockedregverbactpass.elementAtOrNull(functions.misc3((functions
                                                    .regverbmisc3(
                                                        functions.regverbsmisc1(
                                                            widget!.decl!,
                                                            widget!.actpass!,
                                                            widget!.type!,
                                                            widget!.qn!),
                                                        2)!
                                                    .elementAtOrNull(1))!)) ==
                                                true)) {
                                          FFAppState()
                                              .updateUnlockedregverbdeclAtIndex(
                                            (functions.regverbsmisc2(
                                                    functions.regverbsmisc1(
                                                        widget!.decl!,
                                                        widget!.actpass!,
                                                        widget!.type!,
                                                        widget!.qn!),
                                                    2)!) +
                                                1,
                                            (_) => true,
                                          );
                                          FFAppState().currentregverbdecltype =
                                              FFAppState()
                                                      .currentregverbdecltype +
                                                  1;
                                        }
                                        if (FFAppState()
                                                .unlockedregverbdecl
                                                .elementAtOrNull(4) ==
                                            true) {
                                          FFAppState().irregunlocked = true;
                                        }

                                        context.goNamed(
                                          RegverbspointsWidget.routeName,
                                          queryParameters: {
                                            'decl': serializeParam(
                                              widget!.decl,
                                              ParamType.int,
                                            ),
                                            'verbtype': serializeParam(
                                              widget!.type,
                                              ParamType.int,
                                            ),
                                            'actpass': serializeParam(
                                              widget!.actpass,
                                              ParamType.int,
                                            ),
                                            'verbqn': serializeParam(
                                              widget!.qn,
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
