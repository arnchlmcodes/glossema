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
import 'adjspoints_model.dart';
export 'adjspoints_model.dart';

class AdjspointsWidget extends StatefulWidget {
  const AdjspointsWidget({
    super.key,
    required this.gendertype,
    required this.wordqn,
    required this.verbtype,
  });

  final int? gendertype;
  final int? wordqn;
  final int? verbtype;

  static String routeName = 'adjspoints';
  static String routePath = '/adjspoints';

  @override
  State<AdjspointsWidget> createState() => _AdjspointsWidgetState();
}

class _AdjspointsWidgetState extends State<AdjspointsWidget> {
  late AdjspointsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdjspointsModel());

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
        backgroundColor: Colors.black,
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
            'Adjective Practice',
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Container(
                      width: 393.0,
                      height: 650.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF81201A),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                () {
                                  if (FFAppState().adjpractice) {
                                    return 'You\'re in practice mode. Take off practice mode to get points and unlock the next word.';
                                  } else if (FFAppState().adjqn.elementAtOrNull(
                                          functions.adjmisc(
                                              widget!.verbtype!,
                                              widget!.gendertype!,
                                              widget!.wordqn!)!)! >
                                      7) {
                                    return 'Congratulations! You have cleared this word.';
                                  } else {
                                    return 'Not enough correct answers. Try again.';
                                  }
                                }(),
                                textAlign: TextAlign.center,
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
                          if (FFAppState().adjqn.elementAtOrNull(
                                  functions.adjmisc(
                                      widget!.verbtype!,
                                      widget!.gendertype!,
                                      widget!.wordqn!)!)! <=
                              7)
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.goNamed(Adj1declWidget.routeName);
                                  },
                                  text: 'Try Again',
                                  options: FFButtonOptions(
                                    width: 183.0,
                                    height: 57.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsets.all(0.0),
                                    color: Colors.black,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Raleway',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                ),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.goNamed(HomepageWidget.routeName);
                                },
                                text: 'End excercise',
                                options: FFButtonOptions(
                                  width: 183.0,
                                  height: 57.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsets.all(0.0),
                                  color: Colors.black,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Raleway',
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
