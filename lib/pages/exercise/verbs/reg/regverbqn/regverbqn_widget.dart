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
import 'regverbqn_model.dart';
export 'regverbqn_model.dart';

class RegverbqnWidget extends StatefulWidget {
  const RegverbqnWidget({
    super.key,
    required this.decl,
    required this.actpass,
    required this.type,
    required this.rgirg,
  });

  final int? decl;
  final int? actpass;
  final int? type;
  final int? rgirg;

  static String routeName = 'regverbqn';
  static String routePath = '/regverbqn';

  @override
  State<RegverbqnWidget> createState() => _RegverbqnWidgetState();
}

class _RegverbqnWidgetState extends State<RegverbqnWidget> {
  late RegverbqnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegverbqnModel());

    _model.switchValue = FFAppState().regverbspractice;
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
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Regular Verbs',
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
                              FFAppState().regverbspractice = true;
                            } else {
                              FFAppState().regverbspractice = false;
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
                  StreamBuilder<List<RegverbsexcRecord>>(
                    stream: queryRegverbsexcRecord(
                      queryBuilder: (regverbsexcRecord) => regverbsexcRecord
                          .where(
                            'decl',
                            isEqualTo: widget!.decl,
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
                      List<RegverbsexcRecord> listViewRegverbsexcRecordList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewRegverbsexcRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewRegverbsexcRecord =
                              listViewRegverbsexcRecordList[listViewIndex];
                          return Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    Verb01Widget.routeName,
                                    queryParameters: {
                                      'decl': serializeParam(
                                        widget!.decl,
                                        ParamType.int,
                                      ),
                                      'qn': serializeParam(
                                        listViewRegverbsexcRecord.qn,
                                        ParamType.int,
                                      ),
                                      'actpass': serializeParam(
                                        widget!.actpass,
                                        ParamType.int,
                                      ),
                                      'type': serializeParam(
                                        widget!.type,
                                        ParamType.int,
                                      ),
                                      'pres': serializeParam(
                                        listViewRegverbsexcRecord.pres,
                                        ParamType.String,
                                      ),
                                      'infi': serializeParam(
                                        listViewRegverbsexcRecord.infi,
                                        ParamType.String,
                                      ),
                                      'perf': serializeParam(
                                        listViewRegverbsexcRecord.perf,
                                        ParamType.String,
                                      ),
                                      'passperf': serializeParam(
                                        listViewRegverbsexcRecord.passperf,
                                        ParamType.String,
                                      ),
                                      'english': serializeParam(
                                        listViewRegverbsexcRecord.eng,
                                        ParamType.String,
                                      ),
                                      'rgirg': serializeParam(
                                        widget!.rgirg,
                                        ParamType.int,
                                      ),
                                      'engp': serializeParam(
                                        listViewRegverbsexcRecord.engperf,
                                        ParamType.String,
                                      ),
                                      'engpp': serializeParam(
                                        listViewRegverbsexcRecord.engpassperf,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 160.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState()
                                                .regverbsqn
                                                .elementAtOrNull(
                                                    functions.regverbsmisc1(
                                                        widget!.decl!,
                                                        widget!.actpass!,
                                                        widget!.type!,
                                                        listViewRegverbsexcRecord
                                                            .qn))! >=
                                            5
                                        ? Color(0xFF1FAA18)
                                        : Colors.black,
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
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
                                            text: listViewRegverbsexcRecord.qn
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
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
      ),
    );
  }
}
