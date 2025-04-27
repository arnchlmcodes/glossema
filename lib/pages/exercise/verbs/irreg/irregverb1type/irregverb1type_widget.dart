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
import 'irregverb1type_model.dart';
export 'irregverb1type_model.dart';

class Irregverb1typeWidget extends StatefulWidget {
  const Irregverb1typeWidget({
    super.key,
    required this.regirg,
  });

  final int? regirg;

  static String routeName = 'irregverb1type';
  static String routePath = '/irregverb1type';

  @override
  State<Irregverb1typeWidget> createState() => _Irregverb1typeWidgetState();
}

class _Irregverb1typeWidgetState extends State<Irregverb1typeWidget> {
  late Irregverb1typeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Irregverb1typeModel());

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
                      'Irregular Verbs Tense',
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
                        if (FFAppState()
                                .unlockedirregverbs
                                .elementAtOrNull(0) ==
                            true) {
                          context.pushNamed(
                            IrregverbqnWidget.routeName,
                            queryParameters: {
                              'type': serializeParam(
                                0,
                                ParamType.int,
                              ),
                              'regirg': serializeParam(
                                widget!.regirg,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        }
                      },
                      text: 'Present',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 240.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding: EdgeInsets.all(0.0),
                        color: () {
                          if (FFAppState().currentirregverbtype == 0) {
                            return Colors.black;
                          } else if (FFAppState()
                              .unlockedirregverbs
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
                                  fontSize: 32.0,
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
                                    .unlockedirregverbs
                                    .elementAtOrNull(1) ==
                                true) {
                              context.pushNamed(
                                IrregverbqnWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'regirg': serializeParam(
                                    widget!.regirg,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Perfect',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 240.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentirregverbtype == 1) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockedirregverbs
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
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (!FFAppState().unlockedirregverbs.elementAtOrNull(1)!)
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
                                    .unlockedirregverbs
                                    .elementAtOrNull(2) ==
                                true) {
                              context.pushNamed(
                                IrregverbqnWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                  'regirg': serializeParam(
                                    widget!.regirg,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Future',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 240.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().currentirregverbtype == 2) {
                                return Colors.black;
                              } else if (FFAppState()
                                  .unlockedirregverbs
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
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (!FFAppState().unlockedirregverbs.elementAtOrNull(2)!)
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
