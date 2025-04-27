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
import 'nounqn_model.dart';
export 'nounqn_model.dart';

class NounqnWidget extends StatefulWidget {
  const NounqnWidget({
    super.key,
    required this.decltype,
    required this.decldoctype,
  });

  final int? decltype;
  final int? decldoctype;

  static String routeName = 'nounqn';
  static String routePath = '/nounqn';

  @override
  State<NounqnWidget> createState() => _NounqnWidgetState();
}

class _NounqnWidgetState extends State<NounqnWidget> {
  late NounqnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NounqnModel());

    _model.switchValue = FFAppState().nounspractice;
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
            'Noun Declension Practice',
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
                      'Noun Declensions',
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
                            FFAppState().nounspractice = true;
                          } else {
                            FFAppState().nounspractice = false;
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
                StreamBuilder<List<NounsexcRecord>>(
                  stream: queryNounsexcRecord(
                    queryBuilder: (nounsexcRecord) => nounsexcRecord
                        .where(
                          'Nounsdecl',
                          isEqualTo: widget!.decldoctype,
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
                    List<NounsexcRecord> listViewNounsexcRecordList =
                        snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewNounsexcRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewNounsexcRecord =
                            listViewNounsexcRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(
                                Noun11Widget.routeName,
                                queryParameters: {
                                  'decl': serializeParam(
                                    widget!.decltype,
                                    ParamType.int,
                                  ),
                                  'ns': serializeParam(
                                    listViewNounsexcRecord.ns,
                                    ParamType.String,
                                  ),
                                  'gs': serializeParam(
                                    listViewNounsexcRecord.gs,
                                    ParamType.String,
                                  ),
                                  'engs': serializeParam(
                                    listViewNounsexcRecord.englishsng,
                                    ParamType.String,
                                  ),
                                  'engp': serializeParam(
                                    listViewNounsexcRecord.englshplu,
                                    ParamType.String,
                                  ),
                                  'gender': serializeParam(
                                    listViewNounsexcRecord.gender,
                                    ParamType.String,
                                  ),
                                  'qn': serializeParam(
                                    listViewNounsexcRecord.qn,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: FFAppState().nounqns.elementAtOrNull(
                                            functions.misc1(widget!.decltype!,
                                                listViewNounsexcRecord.qn))! >=
                                        7
                                    ? Color(0xFF1FAA18)
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
                                        text: listViewNounsexcRecord.qn
                                            .toString(),
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
