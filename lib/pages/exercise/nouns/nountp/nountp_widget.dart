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
import 'nountp_model.dart';
export 'nountp_model.dart';

class NountpWidget extends StatefulWidget {
  const NountpWidget({super.key});

  static String routeName = 'nountp';
  static String routePath = '/nountp';

  @override
  State<NountpWidget> createState() => _NountpWidgetState();
}

class _NountpWidgetState extends State<NountpWidget> {
  late NountpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NountpModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Noun Declensions',
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
                        context.pushNamed(NounsexplnWidget.routeName);
                      },
                      text: 'Nouns explained here',
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
                        if (FFAppState().unlockednouns.elementAtOrNull(0)!) {
                          context.pushNamed(
                            NounqnWidget.routeName,
                            queryParameters: {
                              'decltype': serializeParam(
                                0,
                                ParamType.int,
                              ),
                              'decldoctype': serializeParam(
                                1,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      text: '1st Declension',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 92.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: () {
                          if (FFAppState().currentnountype == 0) {
                            return Colors.black;
                          } else if (FFAppState()
                              .unlockednouns
                              .elementAtOrNull(0)!) {
                            return Color(0xFF1FAA18);
                          } else {
                            return Color(0xFF5D6161);
                          }
                        }(),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(1)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    21,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '2nd Declension (Masculine)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 1) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(1)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(1)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(2)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    22,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '2nd Declension (Neuter)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 2) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(2)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(2)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(3)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    3,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    31,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '3rd Declension (Masculine/Feminine)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 3) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(3)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(3)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(4)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    4,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    32,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '3rd Declension (Neuter)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 4) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(4)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(4)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(5)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    5,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    41,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '4th Declension (Masculine/Feminine)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 5) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(5)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(5)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(6)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    6,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    42,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '4th Declension (Neuter)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 6) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(6)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(6)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
                            if (FFAppState()
                                .unlockednouns
                                .elementAtOrNull(7)!) {
                              context.pushNamed(
                                NounqnWidget.routeName,
                                queryParameters: {
                                  'decltype': serializeParam(
                                    7,
                                    ParamType.int,
                                  ),
                                  'decldoctype': serializeParam(
                                    5,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '5th Declension',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 92.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentnountype == 7) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockednouns
                                  .elementAtOrNull(7)!) {
                                return Color(0xFF1FAA18);
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
                    Opacity(
                      opacity: FFAppState().unlockednouns.elementAtOrNull(7)!
                          ? 0.0
                          : 1.0,
                      child: Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
                        ),
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
