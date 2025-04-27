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
import 'pronoun2gender_model.dart';
export 'pronoun2gender_model.dart';

class Pronoun2genderWidget extends StatefulWidget {
  const Pronoun2genderWidget({
    super.key,
    required this.type,
  });

  final int? type;

  static String routeName = 'pronoun2gender';
  static String routePath = '/pronoun2gender';

  @override
  State<Pronoun2genderWidget> createState() => _Pronoun2genderWidgetState();
}

class _Pronoun2genderWidgetState extends State<Pronoun2genderWidget> {
  late Pronoun2genderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pronoun2genderModel());

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
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState()
                                    .genderpronounsunloc
                                    .elementAtOrNull(functions.pngendermisc3(
                                        widget!.type!, 1)!) ==
                                true) {
                              context.pushNamed(
                                Pronoun3qnsWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    widget!.type,
                                    ParamType.int,
                                  ),
                                  'genderexists': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'gendertype': serializeParam(
                                    1,
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
                                        .genderpronounsunloc
                                        .elementAtOrNull(
                                            (functions.pngendermisc3(
                                                    widget!.type!, 1)!) +
                                                1) ==
                                    true
                                ? Color(0xFF5FFF06)
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
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (FFAppState()
                                    .genderpronounsunloc
                                    .elementAtOrNull(functions.pngendermisc3(
                                        widget!.type!, 2)!) ==
                                true) {
                              context.pushNamed(
                                Pronoun3qnsWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    widget!.type,
                                    ParamType.int,
                                  ),
                                  'genderexists': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'gendertype': serializeParam(
                                    2,
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
                                      .genderpronounsunloc
                                      .elementAtOrNull((functions.pngendermisc3(
                                              widget!.type!, 2)!) +
                                          1) ==
                                  true) {
                                return Color(0xFF5FFF06);
                              } else if (FFAppState()
                                      .genderpronounsunloc
                                      .elementAtOrNull(functions.pngendermisc3(
                                          widget!.type!, 2)!) ==
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
                    if (FFAppState().genderpronounsunloc.elementAtOrNull(
                            functions.pngendermisc3(widget!.type!, 2)!) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
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
                                    .genderpronounsunloc
                                    .elementAtOrNull(functions.pngendermisc3(
                                        widget!.type!, 3)!) ==
                                true) {
                              context.pushNamed(
                                Pronoun3qnsWidget.routeName,
                                queryParameters: {
                                  'type': serializeParam(
                                    widget!.type,
                                    ParamType.int,
                                  ),
                                  'genderexists': serializeParam(
                                    1,
                                    ParamType.int,
                                  ),
                                  'gendertype': serializeParam(
                                    3,
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
                              if (FFAppState()
                                      .genderpronounsunloc
                                      .elementAtOrNull((functions.pngendermisc3(
                                              widget!.type!, 3)!) +
                                          1) ==
                                  true) {
                                return Color(0xFF5FFF06);
                              } else if (FFAppState()
                                      .genderpronounsunloc
                                      .elementAtOrNull(functions.pngendermisc3(
                                          widget!.type!, 3)!) ==
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
                    if (FFAppState().genderpronounsunloc.elementAtOrNull(
                            functions.pngendermisc3(widget!.type!, 3)!) ==
                        false)
                      Align(
                        alignment: AlignmentDirectional(0.8, -1.0),
                        child: Icon(
                          Icons.lock,
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
