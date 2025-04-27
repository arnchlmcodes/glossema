import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pronoun1types_model.dart';
export 'pronoun1types_model.dart';

class Pronoun1typesWidget extends StatefulWidget {
  const Pronoun1typesWidget({super.key});

  static String routeName = 'pronoun1types';
  static String routePath = '/pronoun1types';

  @override
  State<Pronoun1typesWidget> createState() => _Pronoun1typesWidgetState();
}

class _Pronoun1typesWidgetState extends State<Pronoun1typesWidget> {
  late Pronoun1typesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pronoun1typesModel());

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
        backgroundColor: Color(0xFF81201A),
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
              context.pushNamed(MainexcWidget.routeName);
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
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Pronoun types',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 34.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(PrnexplnWidget.routeName);
                      },
                      text: 'Pronouns explained here',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 100.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          Pronoun3qnsWidget.routeName,
                          queryParameters: {
                            'type': serializeParam(
                              0,
                              ParamType.int,
                            ),
                            'genderexists': serializeParam(
                              0,
                              ParamType.int,
                            ),
                            'gendertype': serializeParam(
                              0,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Personal Pronouns',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 125.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color:
                            FFAppState().unlcprntypes.elementAtOrNull(1) == true
                                ? Color(0xFF1FAA18)
                                : Colors.black,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().unlcprntypes.elementAtOrNull(1)!) {
                              context.pushNamed(
                                Pronoun3qnsWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'genderexists': serializeParam(
                                    0,
                                    ParamType.int,
                                  ),
                                  'gendertype': serializeParam(
                                    0,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Reflexive Pronouns',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 125.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if ((FFAppState()
                                          .pronounsqn
                                          .elementAtOrNull(6)! >
                                      8) &&
                                  (FFAppState().pronounsqn.elementAtOrNull(5)! >
                                      8) &&
                                  (FFAppState().pronounsqn.elementAtOrNull(7)! >
                                      8)) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(1) ==
                                  true) {
                                return Colors.black;
                              } else {
                                return Color(0xFF5D6161);
                              }
                            }(),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlcprntypes.elementAtOrNull(1) == false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                  ],
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().unlcprntypes.elementAtOrNull(2)!) {
                              context.pushNamed(
                                Pronoun2genderWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Demonstrative Pronouns',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 125.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(3) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(2) ==
                                  true) {
                                return Colors.black;
                              } else {
                                return Color(0xFF5D6161);
                              }
                            }(),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlcprntypes.elementAtOrNull(2) == false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                  ],
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().unlcprntypes.elementAtOrNull(3)!) {
                              context.pushNamed(
                                Pronoun2genderWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    3,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Intensive Pronouns',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 125.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(4) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(3) ==
                                  true) {
                                return Colors.black;
                              } else {
                                return Color(0xFF5D6161);
                              }
                            }(),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlcprntypes.elementAtOrNull(3) == false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                  ],
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().unlcprntypes.elementAtOrNull(4)!) {
                              context.pushNamed(
                                Pronoun2genderWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    4,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Relative Pronouns',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 125.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(5) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(4) ==
                                  true) {
                                return Colors.black;
                              } else {
                                return Color(0xFF5D6161);
                              }
                            }(),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlcprntypes.elementAtOrNull(4) == false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                  ],
                ),
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState().unlcprntypes.elementAtOrNull(5)!) {
                              context.pushNamed(
                                Pronoun2genderWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    5,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Indefinite  Pronouns',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 125.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(6) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlcprntypes
                                      .elementAtOrNull(5) ==
                                  true) {
                                return Colors.black;
                              } else {
                                return Color(0xFF5D6161);
                              }
                            }(),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlcprntypes.elementAtOrNull(5) == false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 32.0,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
