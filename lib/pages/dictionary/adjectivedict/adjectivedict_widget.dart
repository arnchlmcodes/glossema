import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adjectivedict_model.dart';
export 'adjectivedict_model.dart';

class AdjectivedictWidget extends StatefulWidget {
  const AdjectivedictWidget({super.key});

  static String routeName = 'adjectivedict';
  static String routePath = '/adjectivedict';

  @override
  State<AdjectivedictWidget> createState() => _AdjectivedictWidgetState();
}

class _AdjectivedictWidgetState extends State<AdjectivedictWidget> {
  late AdjectivedictModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdjectivedictModel());

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
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: Text(
              'Adjectives',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 20.0),
                  child: Text(
                    'Adjective Words',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                          fontSize: 45.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ),
                StreamBuilder<List<AdjectivesRecord>>(
                  stream: queryAdjectivesRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 60.0,
                          height: 60.0,
                          child: SpinKitFadingCube(
                            color: Colors.black,
                            size: 60.0,
                          ),
                        ),
                      );
                    }
                    List<AdjectivesRecord> listViewAdjectivesRecordList =
                        snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAdjectivesRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewAdjectivesRecord =
                            listViewAdjectivesRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsets.all(14.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (listViewAdjectivesRecord.decl == 'M'
                                  ? false
                                  : false) {
                                context.pushNamed(
                                  Adjectivewords3Widget.routeName,
                                  queryParameters: {
                                    'word': serializeParam(
                                      listViewAdjectivesRecord.masc,
                                      ParamType.String,
                                    ),
                                    'femi': serializeParam(
                                      listViewAdjectivesRecord.fem,
                                      ParamType.String,
                                    ),
                                    'neuter': serializeParam(
                                      listViewAdjectivesRecord.neu,
                                      ParamType.String,
                                    ),
                                    'trans': serializeParam(
                                      listViewAdjectivesRecord.trans,
                                      ParamType.String,
                                    ),
                                    'decl': serializeParam(
                                      listViewAdjectivesRecord.decl,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                context.pushNamed(
                                  Adjectivewords12Widget.routeName,
                                  queryParameters: {
                                    'word': serializeParam(
                                      listViewAdjectivesRecord.masc,
                                      ParamType.String,
                                    ),
                                    'femi': serializeParam(
                                      listViewAdjectivesRecord.fem,
                                      ParamType.String,
                                    ),
                                    'neuter': serializeParam(
                                      listViewAdjectivesRecord.neu,
                                      ParamType.String,
                                    ),
                                    'trans': serializeParam(
                                      listViewAdjectivesRecord.trans,
                                      ParamType.String,
                                    ),
                                    'decl': serializeParam(
                                      listViewAdjectivesRecord.decl,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              }
                            },
                            child: Container(
                              width: 100.0,
                              height: 124.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                  color: Color(0xFFFCE56C),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  listViewAdjectivesRecord.masc,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFAFFCF),
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  ',',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFAFFCF),
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  listViewAdjectivesRecord.fem,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFAFFCF),
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                ',',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFFFAFFCF),
                                                      fontSize: 28.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Text(
                                                  listViewAdjectivesRecord.neu,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFFFAFFCF),
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Translation: ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Color(
                                                                0xFF8491A3),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          listViewAdjectivesRecord
                                                              .trans,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
