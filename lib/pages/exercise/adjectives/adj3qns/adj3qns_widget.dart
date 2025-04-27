import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adj3qns_model.dart';
export 'adj3qns_model.dart';

class Adj3qnsWidget extends StatefulWidget {
  const Adj3qnsWidget({
    super.key,
    required this.gendertype,
    required this.qndecl,
  });

  final int? gendertype;
  final int? qndecl;

  static String routeName = 'adj3qns';
  static String routePath = '/adj3qns';

  @override
  State<Adj3qnsWidget> createState() => _Adj3qnsWidgetState();
}

class _Adj3qnsWidgetState extends State<Adj3qnsWidget> {
  late Adj3qnsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Adj3qnsModel());

    _model.switchValue = FFAppState().adjpractice;
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
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Adjectives Words',
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Practice Mode',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 26.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Switch(
                        value: _model.switchValue!,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.switchValue = newValue!);
                          if (newValue!) {
                            FFAppState().adjpractice = true;
                          } else {
                            FFAppState().adjpractice = false;
                          }
                        },
                        activeColor: Color(0xFFFF0D00),
                        activeTrackColor: Colors.black,
                        inactiveTrackColor: Colors.black,
                        inactiveThumbColor: Color(0xFF550404),
                      ),
                    ),
                  ],
                ),
                StreamBuilder<List<AdjexcRecord>>(
                  stream: queryAdjexcRecord(
                    queryBuilder: (adjexcRecord) => adjexcRecord
                        .where(
                          'decl',
                          isEqualTo: widget!.qndecl,
                        )
                        .orderBy('qn'),
                  ),
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
                    List<AdjexcRecord> listViewAdjexcRecordList =
                        snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAdjexcRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewAdjexcRecord =
                            listViewAdjexcRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(
                                Adjs11Widget.routeName,
                                queryParameters: {
                                  'word': serializeParam(
                                    listViewAdjexcRecord.masc,
                                    ParamType.String,
                                  ),
                                  'gendertype': serializeParam(
                                    widget!.gendertype,
                                    ParamType.int,
                                  ),
                                  'engword': serializeParam(
                                    listViewAdjexcRecord.eng,
                                    ParamType.String,
                                  ),
                                  'verbtype': serializeParam(
                                    widget!.qndecl,
                                    ParamType.int,
                                  ),
                                  'fem': serializeParam(
                                    listViewAdjexcRecord.fem,
                                    ParamType.String,
                                  ),
                                  'neu': serializeParam(
                                    listViewAdjexcRecord.neu,
                                    ParamType.String,
                                  ),
                                  'qn': serializeParam(
                                    listViewAdjexcRecord.qn,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: FFAppState().adjqn.elementAtOrNull(
                                            functions.adjmisc(
                                                widget!.qndecl!,
                                                widget!.gendertype!,
                                                listViewAdjexcRecord.qn)!)! >
                                        7
                                    ? Color(0xFF5FFF06)
                                    : Colors.black,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Word ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color: Colors.white,
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      TextSpan(
                                        text:
                                            listViewAdjexcRecord.qn.toString(),
                                        style: GoogleFonts.getFont(
                                          'Raleway',
                                          color: Color(0xFFF7F7F7),
                                          fontSize: 32.0,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
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
