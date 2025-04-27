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
import 'pronounscrwords_model.dart';
export 'pronounscrwords_model.dart';

class PronounscrwordsWidget extends StatefulWidget {
  const PronounscrwordsWidget({
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
    required this.pn52,
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
  final String? pn52;
  final int? qn;

  static String routeName = 'pronounscrwords';
  static String routePath = '/pronounscrwords';

  @override
  State<PronounscrwordsWidget> createState() => _PronounscrwordsWidgetState();
}

class _PronounscrwordsWidgetState extends State<PronounscrwordsWidget> {
  late PronounscrwordsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PronounscrwordsModel());

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
                                Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Text(
                                    'Pronouns Practice',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 42.0,
                                          letterSpacing: 0.0,
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
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Nominative Singular',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn11,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn11 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      0),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Nominative Plural',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn12,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn12 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      1),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
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
                                    decoration: BoxDecoration(
                                      color: Color(0xFF81201A),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Genitive Singular',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn21,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn21 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      2),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Genitive Plural',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn22,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn22 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      3),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Dative Singular',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn31,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn31 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      4),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Dative Plural',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn32,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn32 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      5),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
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
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Accusative Singular',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn41,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn41 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      6),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
                                                        ?.elementAtOrNull(6),
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Accusative Plural',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn42,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn42 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      7),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
                                                        ?.elementAtOrNull(7),
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Ablative Singular',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn51,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn51 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      8),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
                                                        ?.elementAtOrNull(8),
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
                                        Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text(
                                            'Ablative Plural',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
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
                                                    widget!.pn52,
                                                    '-',
                                                  ),
                                                  style: TextStyle(
                                                    color: widget!.pn52 ==
                                                            valueOrDefault<
                                                                String>(
                                                              functions
                                                                  .pronounsexc(
                                                                      widget!
                                                                          .word!,
                                                                      widget!
                                                                          .gendertype!)
                                                                  ?.elementAtOrNull(
                                                                      9),
                                                              '-',
                                                            )
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
                                                        .pronounsexc(
                                                            widget!.word!,
                                                            widget!.gendertype!)
                                                        ?.elementAtOrNull(9),
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
                                        if (widget!.genderexists == 0) {
                                          if (widget!.verbtype == 0) {
                                            if ((FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(0)! >
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(1)! >
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(2)! >
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(3)! >
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(4)! >
                                                    7)) {
                                              FFAppState()
                                                  .updateUnlcprntypesAtIndex(
                                                1,
                                                (_) => true,
                                              );
                                            }
                                          } else {
                                            if ((FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(5)! >
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(6)! >
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull(7)! >
                                                    7)) {
                                              FFAppState()
                                                  .updateUnlcprntypesAtIndex(
                                                2,
                                                (_) => true,
                                              );
                                            }
                                          }
                                        } else {
                                          if (widget!.verbtype == 2) {
                                            if ((FFAppState().pronounsqn.elementAtOrNull((functions.pngenderqnsmisc(widget!.verbtype!, widget!.gendertype!)!.elementAtOrNull(0))!)! >= 7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull((functions
                                                            .pngenderqnsmisc(
                                                                widget!
                                                                    .verbtype!,
                                                                widget!
                                                                    .gendertype!)!
                                                            .elementAtOrNull(
                                                                1))!)! >=
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull((functions
                                                            .pngenderqnsmisc(
                                                                widget!
                                                                    .verbtype!,
                                                                widget!
                                                                    .gendertype!)!
                                                            .elementAtOrNull(
                                                                2))!)! >=
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull((functions
                                                            .pngenderqnsmisc(
                                                                widget!
                                                                    .verbtype!,
                                                                widget!
                                                                    .gendertype!)!
                                                            .elementAtOrNull(
                                                                3))!)! >=
                                                    7)) {
                                              FFAppState()
                                                  .updateGenderpronounsunlocAtIndex(
                                                widget!.gendertype!,
                                                (_) => true,
                                              );
                                              safeSetState(() {});
                                            }
                                          }
                                          if (widget!.verbtype == 3) {
                                            if (FFAppState()
                                                    .pronounsqn
                                                    .elementAtOrNull((functions
                                                        .pngenderqnsmisc(
                                                            widget!.verbtype!,
                                                            widget!
                                                                .gendertype!)!
                                                        .elementAtOrNull(
                                                            0))!)! >=
                                                7) {
                                              FFAppState()
                                                  .updateGenderpronounsunlocAtIndex(
                                                (widget!.gendertype!) +
                                                    (widget!.verbtype!),
                                                (_) => true,
                                              );
                                              safeSetState(() {});
                                            }
                                          }
                                          if (widget!.verbtype == 4) {
                                            if (FFAppState()
                                                    .pronounsqn
                                                    .elementAtOrNull((functions
                                                        .pngenderqnsmisc(
                                                            widget!.verbtype!,
                                                            widget!
                                                                .gendertype!)!
                                                        .elementAtOrNull(
                                                            0))!)! >=
                                                7) {
                                              FFAppState()
                                                  .updateGenderpronounsunlocAtIndex(
                                                (widget!.gendertype!) +
                                                    (widget!.verbtype!) +
                                                    2,
                                                (_) => true,
                                              );
                                              safeSetState(() {});
                                            }
                                          }
                                          if (widget!.verbtype == 5) {
                                            if ((FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull((functions
                                                            .pngenderqnsmisc(
                                                                widget!
                                                                    .verbtype!,
                                                                widget!
                                                                    .gendertype!)!
                                                            .elementAtOrNull(
                                                                0))!)! >=
                                                    7) &&
                                                (FFAppState()
                                                        .pronounsqn
                                                        .elementAtOrNull((functions
                                                            .pngenderqnsmisc(
                                                                widget!
                                                                    .verbtype!,
                                                                widget!
                                                                    .gendertype!)!
                                                            .elementAtOrNull(
                                                                1))!)! >=
                                                    7)) {
                                              FFAppState()
                                                  .updateGenderpronounsunlocAtIndex(
                                                (widget!.gendertype!) + 9,
                                                (_) => true,
                                              );
                                              safeSetState(() {});
                                            }
                                          }
                                          if ((FFAppState().genderpronounsunloc.elementAtOrNull((functions
                                                      .pngendermis2(
                                                          widget!.verbtype!)!
                                                      .elementAtOrNull(0))!) ==
                                                  true) &&
                                              (FFAppState()
                                                      .genderpronounsunloc
                                                      .elementAtOrNull((functions
                                                          .pngendermis2(widget!
                                                              .verbtype!)!
                                                          .elementAtOrNull(
                                                              1))!) ==
                                                  true) &&
                                              (FFAppState()
                                                      .genderpronounsunloc
                                                      .elementAtOrNull((functions
                                                          .pngendermis2(widget!
                                                              .verbtype!)!
                                                          .elementAtOrNull(
                                                              2))!) ==
                                                  true)) {
                                            FFAppState()
                                                .updateUnlcprntypesAtIndex(
                                              (widget!.verbtype!) + 1,
                                              (_) => true,
                                            );
                                          }
                                        }

                                        context.goNamed(
                                          PronounspointsWidget.routeName,
                                          queryParameters: {
                                            'qn': serializeParam(
                                              widget!.qn,
                                              ParamType.int,
                                            ),
                                            'type': serializeParam(
                                              widget!.verbtype,
                                              ParamType.int,
                                            ),
                                            'gender': serializeParam(
                                              widget!.gendertype,
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
