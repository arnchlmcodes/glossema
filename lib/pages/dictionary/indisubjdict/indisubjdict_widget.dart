import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'indisubjdict_model.dart';
export 'indisubjdict_model.dart';

class IndisubjdictWidget extends StatefulWidget {
  const IndisubjdictWidget({
    super.key,
    required this.present,
    required this.infi,
    required this.perfect,
    required this.passperfect,
  });

  final String? present;
  final String? infi;
  final String? perfect;
  final String? passperfect;

  static String routeName = 'indisubjdict';
  static String routePath = '/indisubjdict';

  @override
  State<IndisubjdictWidget> createState() => _IndisubjdictWidgetState();
}

class _IndisubjdictWidgetState extends State<IndisubjdictWidget> {
  late IndisubjdictModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndisubjdictModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF81201A),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Dictionary',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 34.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          ActipassdictWidget.routeName,
                          queryParameters: {
                            'indisub': serializeParam(
                              1,
                              ParamType.int,
                            ),
                            'present': serializeParam(
                              widget!.present,
                              ParamType.String,
                            ),
                            'infi': serializeParam(
                              widget!.infi,
                              ParamType.String,
                            ),
                            'perfect': serializeParam(
                              widget!.perfect,
                              ParamType.String,
                            ),
                            'passperfect': serializeParam(
                              widget!.passperfect,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: 393.0,
                        height: 340.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Indicative  Verbs\nForms',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 44.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          ActipassdictWidget.routeName,
                          queryParameters: {
                            'indisub': serializeParam(
                              2,
                              ParamType.int,
                            ),
                            'present': serializeParam(
                              widget!.present,
                              ParamType.String,
                            ),
                            'infi': serializeParam(
                              widget!.infi,
                              ParamType.String,
                            ),
                            'perfect': serializeParam(
                              widget!.perfect,
                              ParamType.String,
                            ),
                            'passperfect': serializeParam(
                              widget!.passperfect,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: Container(
                        width: 393.0,
                        height: 340.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Subjunctive  Verbs\nForms',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 44.0,
                                  letterSpacing: 0.0,
                                ),
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
    );
  }
}
