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
import 'prodict_model.dart';
export 'prodict_model.dart';

class ProdictWidget extends StatefulWidget {
  const ProdictWidget({super.key});

  static String routeName = 'prodict';
  static String routePath = '/prodict';

  @override
  State<ProdictWidget> createState() => _ProdictWidgetState();
}

class _ProdictWidgetState extends State<ProdictWidget> {
  late ProdictModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdictModel());

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
            'nouns',
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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 20.0),
                  child: Text(
                    'Pronouns',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Playfair Display',
                          color: Colors.white,
                          fontSize: 45.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ),
                PagedListView<DocumentSnapshot<Object?>?, PronRecord>(
                  pagingController: _model.setListViewController(
                    PronRecord.collection,
                  ),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<PronRecord>(
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
                      final listViewPronRecord = _model
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
                              PronounswordWidget.routeName,
                              queryParameters: {
                                'word': serializeParam(
                                  listViewPronRecord.word,
                                  ParamType.String,
                                ),
                                'trans': serializeParam(
                                  listViewPronRecord.translation,
                                  ParamType.String,
                                ),
                                'ns': serializeParam(
                                  listViewPronRecord.nomSingM,
                                  ParamType.String,
                                ),
                                'np': serializeParam(
                                  listViewPronRecord.nomPluM,
                                  ParamType.String,
                                ),
                                'gs': serializeParam(
                                  listViewPronRecord.genSingM,
                                  ParamType.String,
                                ),
                                'gp': serializeParam(
                                  listViewPronRecord.genPluM,
                                  ParamType.String,
                                ),
                                'ds': serializeParam(
                                  listViewPronRecord.datSingM,
                                  ParamType.String,
                                ),
                                'dp': serializeParam(
                                  listViewPronRecord.datPluM,
                                  ParamType.String,
                                ),
                                'as': serializeParam(
                                  listViewPronRecord.accSingM,
                                  ParamType.String,
                                ),
                                'ap': serializeParam(
                                  listViewPronRecord.accPluM,
                                  ParamType.String,
                                ),
                                'abs': serializeParam(
                                  listViewPronRecord.ablSingM,
                                  ParamType.String,
                                ),
                                'abp': serializeParam(
                                  listViewPronRecord.ablPluM,
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
                                              listViewPronRecord.word,
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
                                              text: listViewPronRecord
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
