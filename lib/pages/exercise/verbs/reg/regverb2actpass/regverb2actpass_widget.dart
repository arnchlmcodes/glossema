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
import 'regverb2actpass_model.dart';
export 'regverb2actpass_model.dart';

class Regverb2actpassWidget extends StatefulWidget {
  const Regverb2actpassWidget({
    super.key,
    required this.decl,
    required this.rgirg,
  });

  final int? decl;
  final int? rgirg;

  static String routeName = 'regverb2actpass';
  static String routePath = '/regverb2actpass';

  @override
  State<Regverb2actpassWidget> createState() => _Regverb2actpassWidgetState();
}

class _Regverb2actpassWidgetState extends State<Regverb2actpassWidget> {
  late Regverb2actpassModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Regverb2actpassModel());

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
                      'Regular Verbs ',
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
                          Regverb3typeWidget.routeName,
                          queryParameters: {
                            'decl': serializeParam(
                              widget!.decl,
                              ParamType.int,
                            ),
                            'actpass': serializeParam(
                              0,
                              ParamType.int,
                            ),
                            'rgirrg': serializeParam(
                              widget!.rgirg,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Indicative Active',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 380.0,
                        padding: EdgeInsets.all(0.0),
                        iconPadding: EdgeInsets.all(0.0),
                        color: FFAppState()
                                .unlockedregverbactpass
                                .elementAtOrNull(
                                    functions.misc6(widget!.decl!))!
                            ? Color(0xFF1FAA18)
                            : Colors.black,
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
                                .unlockedregverbactpass
                                .elementAtOrNull(
                                    functions.misc6(widget!.decl!))!) {
                              context.pushNamed(
                                Regverb3typeWidget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    widget!.decl,
                                    ParamType.int,
                                  ),
                                  'actpass': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'rgirrg': serializeParam(
                                    widget!.rgirg,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Indicative Passive',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 380.0,
                            padding: EdgeInsets.all(0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: () {
                              if (FFAppState()
                                  .unlockedregverbactpass
                                  .elementAtOrNull(functions.misc3(
                                      functions.misc6(widget!.decl!)))!) {
                                return Color(0xFF1FAA18);
                              } else if (FFAppState()
                                  .unlockedregverbactpass
                                  .elementAtOrNull(
                                      functions.misc6(widget!.decl!))!) {
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
                    if (!FFAppState()
                        .unlockedregverbactpass
                        .elementAtOrNull(functions.misc6(widget!.decl!))!)
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
