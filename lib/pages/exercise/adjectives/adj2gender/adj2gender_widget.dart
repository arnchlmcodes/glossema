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
import 'adj2gender_model.dart';
export 'adj2gender_model.dart';

class Adj2genderWidget extends StatefulWidget {
  const Adj2genderWidget({
    super.key,
    required this.adjdecl,
  });

  final int? adjdecl;

  static String routeName = 'adj2gender';
  static String routePath = '/adj2gender';

  @override
  State<Adj2genderWidget> createState() => _Adj2genderWidgetState();
}

class _Adj2genderWidgetState extends State<Adj2genderWidget> {
  late Adj2genderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Adj2genderModel());

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
                      'Adjectives types',
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
                Stack(
                  children: [
                    if ((widget!.adjdecl == 1) || (widget!.adjdecl == 4))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().adjgenderunlock.elementAtOrNull(
                                      functions.adjmisc3(
                                          widget!.adjdecl!, 0, 0)!) ==
                                  true) {
                                context.pushNamed(
                                  Adj3qnsWidget.routeName,
                                  queryParameters: {
                                    'gendertype': serializeParam(
                                      0,
                                      ParamType.int,
                                    ),
                                    'qndecl': serializeParam(
                                      widget!.adjdecl,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            },
                            text: 'Masculine',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 211.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FFAppState()
                                          .adjgenderunlock
                                          .elementAtOrNull((functions.adjmisc3(
                                                  widget!.adjdecl!, 0, 0)!) +
                                              1) ==
                                      true
                                  ? Color(0xFF1FAA18)
                                  : Colors.black,
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
                    if ((widget!.adjdecl == 1) || (widget!.adjdecl == 4))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().adjgenderunlock.elementAtOrNull(
                                      functions.adjmisc3(
                                          widget!.adjdecl!, 1, 0)!) ==
                                  true) {
                                context.pushNamed(
                                  Adj3qnsWidget.routeName,
                                  queryParameters: {
                                    'gendertype': serializeParam(
                                      1,
                                      ParamType.int,
                                    ),
                                    'qndecl': serializeParam(
                                      widget!.adjdecl,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            },
                            text: 'Feminine',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 211.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: () {
                                if (FFAppState()
                                        .adjgenderunlock
                                        .elementAtOrNull((functions.adjmisc3(
                                                widget!.adjdecl!, 1, 0)!) +
                                            1) ==
                                    true) {
                                  return Color(0xFF1FAA18);
                                } else if (FFAppState()
                                        .adjgenderunlock
                                        .elementAtOrNull(functions.adjmisc3(
                                            widget!.adjdecl!, 1, 0)!) ==
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
                    if ((FFAppState().adjgenderunlock.elementAtOrNull(
                                functions.adjmisc3(widget!.adjdecl!, 1, 0)!) ==
                            false) &&
                        ((widget!.adjdecl == 1) || (widget!.adjdecl == 4)))
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
                    if ((widget!.adjdecl == 2) || (widget!.adjdecl == 3))
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().adjgenderunlock.elementAtOrNull(
                                      functions.adjmisc3(
                                          widget!.adjdecl!, 1, 0)!) ==
                                  true) {
                                context.pushNamed(
                                  Adj3qnsWidget.routeName,
                                  queryParameters: {
                                    'gendertype': serializeParam(
                                      1,
                                      ParamType.int,
                                    ),
                                    'qndecl': serializeParam(
                                      widget!.adjdecl,
                                      ParamType.int,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            },
                            text: 'Masculine/Feminine',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 211.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: () {
                                if (FFAppState()
                                        .adjgenderunlock
                                        .elementAtOrNull((functions.adjmisc3(
                                                widget!.adjdecl!, 1, 0)!) +
                                            1) ==
                                    true) {
                                  return Color(0xFF1FAA18);
                                } else if (FFAppState()
                                        .adjgenderunlock
                                        .elementAtOrNull(functions.adjmisc3(
                                            widget!.adjdecl!, 1, 0)!) ==
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
                    if ((FFAppState().adjgenderunlock.elementAtOrNull(
                                functions.adjmisc3(widget!.adjdecl!, 1, 0)!) ==
                            false) &&
                        ((widget!.adjdecl == 2) || (widget!.adjdecl == 3)))
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
                            if (FFAppState().adjgenderunlock.elementAtOrNull(
                                    functions.adjmisc3(
                                        widget!.adjdecl!, 2, 0)!) ==
                                true) {
                              context.pushNamed(
                                Adj3qnsWidget.routeName,
                                queryParameters: {
                                  'gendertype': serializeParam(
                                    2,
                                    ParamType.int,
                                  ),
                                  'qndecl': serializeParam(
                                    widget!.adjdecl,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Neuter',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 211.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState().adjgenderunlock.elementAtOrNull(
                                      (functions.adjmisc3(
                                              widget!.adjdecl!, 2, 0)!) +
                                          1) ==
                                  true) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                      .adjgenderunlock
                                      .elementAtOrNull(functions.adjmisc3(
                                          widget!.adjdecl!, 2, 0)!) ==
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
                    if (FFAppState().adjgenderunlock.elementAtOrNull(
                            functions.adjmisc3(widget!.adjdecl!, 2, 0)!) ==
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
