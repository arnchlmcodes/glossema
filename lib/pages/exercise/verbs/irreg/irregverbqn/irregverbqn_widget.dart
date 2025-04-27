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
import 'irregverbqn_model.dart';
export 'irregverbqn_model.dart';

class IrregverbqnWidget extends StatefulWidget {
  const IrregverbqnWidget({
    super.key,
    required this.type,
    required this.regirg,
  });

  final int? type;
  final int? regirg;

  static String routeName = 'irregverbqn';
  static String routePath = '/irregverbqn';

  @override
  State<IrregverbqnWidget> createState() => _IrregverbqnWidgetState();
}

class _IrregverbqnWidgetState extends State<IrregverbqnWidget> {
  late IrregverbqnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IrregverbqnModel());

    _model.switchValue = FFAppState().irreghints;
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
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Irregular Verbs',
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
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Practice Mode',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                                  safeSetState(
                                      () => _model.switchValue = newValue!);
                                  if (newValue!) {
                                    FFAppState().irreghints = true;
                                  } else {
                                    FFAppState().irreghints = false;
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
                        StreamBuilder<List<IrregverbsexcRecord>>(
                          stream: queryIrregverbsexcRecord(
                            queryBuilder: (irregverbsexcRecord) =>
                                irregverbsexcRecord.orderBy('qn'),
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
                            List<IrregverbsexcRecord>
                                listViewIrregverbsexcRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewIrregverbsexcRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewIrregverbsexcRecord =
                                    listViewIrregverbsexcRecordList[
                                        listViewIndex];
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
                                              0,
                                              ParamType.int,
                                            ),
                                            'qn': serializeParam(
                                              listViewIrregverbsexcRecord.qn,
                                              ParamType.int,
                                            ),
                                            'actpass': serializeParam(
                                              0,
                                              ParamType.int,
                                            ),
                                            'type': serializeParam(
                                              widget!.type,
                                              ParamType.int,
                                            ),
                                            'pres': serializeParam(
                                              listViewIrregverbsexcRecord
                                                  .present,
                                              ParamType.String,
                                            ),
                                            'infi': serializeParam(
                                              listViewIrregverbsexcRecord
                                                  .infinitive,
                                              ParamType.String,
                                            ),
                                            'perf': serializeParam(
                                              listViewIrregverbsexcRecord
                                                  .perfect,
                                              ParamType.String,
                                            ),
                                            'passperf': serializeParam(
                                              ' ',
                                              ParamType.String,
                                            ),
                                            'english': serializeParam(
                                              listViewIrregverbsexcRecord
                                                  .english,
                                              ParamType.String,
                                            ),
                                            'rgirg': serializeParam(
                                              widget!.regirg,
                                              ParamType.int,
                                            ),
                                            'engp': serializeParam(
                                              listViewIrregverbsexcRecord
                                                  .englishPerfect,
                                              ParamType.String,
                                            ),
                                            'engpp': serializeParam(
                                              listViewIrregverbsexcRecord
                                                  .englishPassPerfect,
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
                                                      .irregverbqns
                                                      .elementAtOrNull(
                                                          functions.misc4(
                                                              widget!.type!,
                                                              listViewIrregverbsexcRecord
                                                                  .qn)!)! >=
                                                  5
                                              ? Color(0xFF1FAA18)
                                              : Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      listViewIrregverbsexcRecord
                                                          .infinitive,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 32.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                )
                                              ],
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
