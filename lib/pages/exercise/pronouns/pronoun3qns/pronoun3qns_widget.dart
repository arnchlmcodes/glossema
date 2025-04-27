import '/backend/backend.dart';
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
import 'pronoun3qns_model.dart';
export 'pronoun3qns_model.dart';

class Pronoun3qnsWidget extends StatefulWidget {
  const Pronoun3qnsWidget({
    super.key,
    required this.type,
    required this.genderexists,
    required this.gendertype,
  });

  final int? type;
  final int? genderexists;
  final int? gendertype;

  static String routeName = 'Pronoun3qns';
  static String routePath = '/Pronoun3qns';

  @override
  State<Pronoun3qnsWidget> createState() => _Pronoun3qnsWidgetState();
}

class _Pronoun3qnsWidgetState extends State<Pronoun3qnsWidget> {
  late Pronoun3qnsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pronoun3qnsModel());

    _model.switchValue = FFAppState().pronounpractice;
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
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Text(
                      'Pronoun Words',
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
                            FFAppState().pronounpractice = true;
                          } else {
                            FFAppState().pronounpractice = false;
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
                StreamBuilder<List<PronounsexcRecord>>(
                  stream: queryPronounsexcRecord(
                    queryBuilder: (pronounsexcRecord) => pronounsexcRecord
                        .where(
                          'type',
                          isEqualTo: widget!.type,
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
                    List<PronounsexcRecord> listViewPronounsexcRecordList =
                        snapshot.data!;

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewPronounsexcRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewPronounsexcRecord =
                            listViewPronounsexcRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsets.all(10.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(
                                Pronouns11Widget.routeName,
                                queryParameters: {
                                  'word': serializeParam(
                                    listViewPronounsexcRecord.word,
                                    ParamType.String,
                                  ),
                                  'genderexists': serializeParam(
                                    widget!.genderexists,
                                    ParamType.int,
                                  ),
                                  'gendertype': serializeParam(
                                    widget!.gendertype,
                                    ParamType.int,
                                  ),
                                  'engword': serializeParam(
                                    listViewPronounsexcRecord.english,
                                    ParamType.String,
                                  ),
                                  'verbtype': serializeParam(
                                    widget!.type,
                                    ParamType.int,
                                  ),
                                  'qn': serializeParam(
                                    listViewPronounsexcRecord.qn,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 160.0,
                              decoration: BoxDecoration(
                                color: FFAppState().pronounsqn.elementAtOrNull(
                                            functions.pnmiscqn(
                                                listViewPronounsexcRecord.qn,
                                                widget!.gendertype!,
                                                widget!.type!)!)! >
                                        7
                                    ? Color(0xFF5FFF06)
                                    : Colors.black,
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  listViewPronounsexcRecord.word,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 42.0,
                                        letterSpacing: 0.0,
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
