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
import 'regverb1decl_model.dart';
export 'regverb1decl_model.dart';

class Regverb1declWidget extends StatefulWidget {
  const Regverb1declWidget({
    super.key,
    required this.regirreg,
  });

  final int? regirreg;

  static String routeName = 'regverb1decl';
  static String routePath = '/regverb1decl';

  @override
  State<Regverb1declWidget> createState() => _Regverb1declWidgetState();
}

class _Regverb1declWidgetState extends State<Regverb1declWidget> {
  late Regverb1declModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Regverb1declModel());

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
              context.pushNamed(VerbstpWidget.routeName);
            },
          ),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Regular Verbs',
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
                        context.pushNamed(
                          Regverb2actpassWidget.routeName,
                          queryParameters: {
                            'decl': serializeParam(
                              1,
                              ParamType.int,
                            ),
                            'rgirg': serializeParam(
                              widget!.regirreg,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: '1st Conjugation',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 160.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: () {
                          if (FFAppState().currentregverbdecltype == 0) {
                            return Colors.black;
                          } else if (FFAppState()
                              .unlockedregverbdecl
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
                                    .unlockedregverbdecl
                                    .elementAtOrNull(1) ==
                                true) {
                              context.pushNamed(
                                Regverb2actpassWidget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                  'rgirg': serializeParam(
                                    widget!.regirreg,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '2nd Conjugation',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 160.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentregverbdecltype == 1) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockedregverbdecl
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
                    if (FFAppState().unlockedregverbdecl.elementAtOrNull(1) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
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
                                    .unlockedregverbdecl
                                    .elementAtOrNull(2) ==
                                true) {
                              context.pushNamed(
                                Regverb2actpassWidget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    3,
                                    ParamType.int,
                                  ),
                                  'rgirg': serializeParam(
                                    widget!.regirreg,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '3rd Conjugation',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 160.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentregverbdecltype == 2) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockedregverbdecl
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
                    if (FFAppState().unlockedregverbdecl.elementAtOrNull(2) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
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
                                    .unlockedregverbdecl
                                    .elementAtOrNull(3) ==
                                true) {
                              context.pushNamed(
                                Regverb2actpassWidget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    4,
                                    ParamType.int,
                                  ),
                                  'rgirg': serializeParam(
                                    widget!.regirreg,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: '4th Conjugation',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 160.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentregverbdecltype == 3) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockedregverbdecl
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
                    if (FFAppState().unlockedregverbdecl.elementAtOrNull(3) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.black,
                          size: 28.0,
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
