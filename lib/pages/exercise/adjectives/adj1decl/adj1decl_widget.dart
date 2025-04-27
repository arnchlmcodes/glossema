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
import 'adj1decl_model.dart';
export 'adj1decl_model.dart';

class Adj1declWidget extends StatefulWidget {
  const Adj1declWidget({super.key});

  static String routeName = 'adj1decl';
  static String routePath = '/adj1decl';

  @override
  State<Adj1declWidget> createState() => _Adj1declWidgetState();
}

class _Adj1declWidgetState extends State<Adj1declWidget> {
  late Adj1declModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Adj1declModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Adjectives Declension types',
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
                        context.pushNamed(AdjexplnWidget.routeName);
                      },
                      text: 'Adjectives explained here',
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
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              Adj2genderWidget.routeName,
                              queryParameters: {
                                'adjdecl': serializeParam(
                                  1,
                                  ParamType.int,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: '1st/2nd Declension',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 180.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentdecladj == 1) {
                                return Colors.black;
                              } else if (FFAppState()
                                      .adjdeclunlocked
                                      .elementAtOrNull(0) ==
                                  true) {
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
                                    .adjdeclunlocked
                                    .elementAtOrNull(1) ==
                                true) {
                              context.pushNamed(
                                Adj2genderWidget.routeName,
                                queryParameters: {
                                  'adjdecl': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '3rd Declension (1-termination)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 180.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentdecladj == 2) {
                                return Colors.black;
                              } else if (FFAppState()
                                      .adjdeclunlocked
                                      .elementAtOrNull(1) ==
                                  true) {
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
                    if (FFAppState().adjdeclunlocked.elementAtOrNull(1) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 34.0,
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
                                    .adjdeclunlocked
                                    .elementAtOrNull(2) ==
                                true) {
                              context.pushNamed(
                                Adj2genderWidget.routeName,
                                queryParameters: {
                                  'adjdecl': serializeParam(
                                    3,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '3rd Declension (2-termination)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 180.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentdecladj == 3) {
                                return Colors.black;
                              } else if (FFAppState()
                                      .adjdeclunlocked
                                      .elementAtOrNull(2) ==
                                  true) {
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
                    if (FFAppState().adjdeclunlocked.elementAtOrNull(2) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 34.0,
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
                                    .adjdeclunlocked
                                    .elementAtOrNull(3) ==
                                true) {
                              context.pushNamed(
                                Adj2genderWidget.routeName,
                                queryParameters: {
                                  'adjdecl': serializeParam(
                                    4,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '3rd Declension (3-termination)',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 180.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentdecladj == 4) {
                                return Colors.black;
                              } else if (FFAppState()
                                      .adjdeclunlocked
                                      .elementAtOrNull(3) ==
                                  true) {
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
                    if (FFAppState().adjdeclunlocked.elementAtOrNull(3) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 34.0,
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
