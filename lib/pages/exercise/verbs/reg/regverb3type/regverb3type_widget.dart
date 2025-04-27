import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'regverb3type_model.dart';
export 'regverb3type_model.dart';

class Regverb3typeWidget extends StatefulWidget {
  const Regverb3typeWidget({
    super.key,
    required this.decl,
    required this.actpass,
    required this.rgirrg,
  });

  final int? decl;
  final int? actpass;
  final int? rgirrg;

  static String routeName = 'regverb3type';
  static String routePath = '/regverb3type';

  @override
  State<Regverb3typeWidget> createState() => _Regverb3typeWidgetState();
}

class _Regverb3typeWidgetState extends State<Regverb3typeWidget> {
  late Regverb3typeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Regverb3typeModel());

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
              context.pop();
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
                      'Regular Verbs Tense',
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
                          RegverbqnWidget.routeName,
                          queryParameters: {
                            'decl': serializeParam(
                              widget!.decl,
                              ParamType.int,
                            ),
                            'actpass': serializeParam(
                              widget!.actpass,
                              ParamType.int,
                            ),
                            'type': serializeParam(
                              0,
                              ParamType.int,
                            ),
                            'rgirg': serializeParam(
                              widget!.rgirrg,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Present',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 240.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding: EdgeInsets.all(0.0),
                        color: () {
                          if (FFAppState().unlockedregverbtype.elementAtOrNull(
                                  functions.misc3(functions.misc7(
                                      widget!.decl!, widget!.actpass!, 0))) ==
                              true) {
                            return Color(0xFF1FAA18);
                          } else if (FFAppState()
                                  .unlockedregverbtype
                                  .elementAtOrNull(functions.misc7(
                                      widget!.decl!, widget!.actpass!, 0)) ==
                              true) {
                            return Colors.black;
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
                                    .unlockedregverbtype
                                    .elementAtOrNull(functions.misc7(
                                        widget!.decl!, widget!.actpass!, 1)) ==
                                true) {
                              context.pushNamed(
                                RegverbqnWidget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    widget!.decl,
                                    ParamType.int,
                                  ),
                                  'actpass': serializeParam(
                                    widget!.actpass,
                                    ParamType.int,
                                  ),
                                  'type': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'rgirg': serializeParam(
                                    widget!.rgirrg,
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
                              if (FFAppState()
                                      .unlockedregverbtype
                                      .elementAtOrNull(functions.misc3(
                                          functions.misc7(widget!.decl!,
                                              widget!.actpass!, 1))) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlockedregverbtype
                                      .elementAtOrNull(functions.misc7(
                                          widget!.decl!,
                                          widget!.actpass!,
                                          1)) ==
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
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlockedregverbtype.elementAtOrNull(
                            functions.misc7(
                                widget!.decl!, widget!.actpass!, 1)) ==
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
                                    .unlockedregverbtype
                                    .elementAtOrNull(functions.misc7(
                                        widget!.decl!, widget!.actpass!, 2)) ==
                                true) {
                              context.pushNamed(
                                RegverbqnWidget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    widget!.decl,
                                    ParamType.int,
                                  ),
                                  'actpass': serializeParam(
                                    widget!.actpass,
                                    ParamType.int,
                                  ),
                                  'type': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                  'rgirg': serializeParam(
                                    widget!.rgirrg,
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
                              if (FFAppState()
                                      .unlockedregverbtype
                                      .elementAtOrNull(functions.misc3(
                                          functions.misc7(widget!.decl!,
                                              widget!.actpass!, 2))) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .unlockedregverbtype
                                      .elementAtOrNull(functions.misc7(
                                          widget!.decl!,
                                          widget!.actpass!,
                                          2)) ==
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
                                  fontSize: 32.0,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    if (FFAppState().unlockedregverbtype.elementAtOrNull(
                            functions.misc7(
                                widget!.decl!, widget!.actpass!, 2)) ==
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
