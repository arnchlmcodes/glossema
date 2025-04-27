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
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'noundict_model.dart';
export 'noundict_model.dart';

class NoundictWidget extends StatefulWidget {
  const NoundictWidget({super.key});

  static String routeName = 'noundict';
  static String routePath = '/noundict';

  @override
  State<NoundictWidget> createState() => _NoundictWidgetState();
}

class _NoundictWidgetState extends State<NoundictWidget> {
  late NoundictModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoundictModel());

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
          title: Text(
            'Nouns',
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
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                PagedListView<DocumentSnapshot<Object?>?, Nouns1Record>(
                  pagingController: _model.setListViewController(
                    Nouns1Record.collection,
                  ),
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<Nouns1Record>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 60.0,
                        height: 60.0,
                        child: SpinKitFadingCube(
                          color: Colors.black,
                          size: 60.0,
                        ),
                      ),
                    ),
                    // Customize what your widget looks like when it's loading another page.
                    newPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 60.0,
                        height: 60.0,
                        child: SpinKitFadingCube(
                          color: Colors.black,
                          size: 60.0,
                        ),
                      ),
                    ),

                    itemBuilder: (context, _, listViewIndex) {
                      final listViewNouns1Record = _model
                          .listViewPagingController!.itemList![listViewIndex];
                      return Padding(
                        padding: EdgeInsets.all(14.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              NounwordWidget.routeName,
                              queryParameters: {
                                'word': serializeParam(
                                  listViewNouns1Record.word,
                                  ParamType.String,
                                ),
                                'trans': serializeParam(
                                  listViewNouns1Record.translation,
                                  ParamType.String,
                                ),
                                'ns': serializeParam(
                                  listViewNouns1Record.formsNomSingular,
                                  ParamType.String,
                                ),
                                'np': serializeParam(
                                  listViewNouns1Record.formsNomPlural,
                                  ParamType.String,
                                ),
                                'gs': serializeParam(
                                  listViewNouns1Record.formsGenSingular,
                                  ParamType.String,
                                ),
                                'gp': serializeParam(
                                  listViewNouns1Record.formsGenPlural,
                                  ParamType.String,
                                ),
                                'ds': serializeParam(
                                  listViewNouns1Record.formsDatSingular,
                                  ParamType.String,
                                ),
                                'dp': serializeParam(
                                  listViewNouns1Record.formsDatPlural,
                                  ParamType.String,
                                ),
                                'as': serializeParam(
                                  listViewNouns1Record.formsAccSingular,
                                  ParamType.String,
                                ),
                                'ap': serializeParam(
                                  listViewNouns1Record.formsAccPlural,
                                  ParamType.String,
                                ),
                                'abs': serializeParam(
                                  listViewNouns1Record.formsAblSingular,
                                  ParamType.String,
                                ),
                                'abp': serializeParam(
                                  listViewNouns1Record.formsAblPlural,
                                  ParamType.String,
                                ),
                                'gen': serializeParam(
                                  listViewNouns1Record.genitive,
                                  ParamType.String,
                                ),
                                'gender': serializeParam(
                                  listViewNouns1Record.gender,
                                  ParamType.String,
                                ),
                                'decl': serializeParam(
                                  listViewNouns1Record.noundec,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: Container(
                            width: 100.0,
                            height: 112.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(24.0),
                              border: Border.all(
                                color: Color(0xFFFCE56C),
                              ),
                            ),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(6.0),
                                            child: Text(
                                              listViewNouns1Record.word,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            ',',
                                            style: FlutterFlowTheme.of(context)
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
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(6.0),
                                            child: Text(
                                              listViewNouns1Record.genitive,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            ',',
                                            style: FlutterFlowTheme.of(context)
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
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(6.0),
                                            child: Text(
                                              () {
                                                if (listViewNouns1Record
                                                        .gender ==
                                                    'masculine') {
                                                  return 'M';
                                                } else if (listViewNouns1Record
                                                        .gender ==
                                                    'feminine') {
                                                  return 'F';
                                                } else {
                                                  return 'N';
                                                }
                                              }(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Translation: ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFAFFCF),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: listViewNouns1Record
                                                  .translation,
                                              style: TextStyle(
                                                color: Color(0xFFFAFFCF),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
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
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
