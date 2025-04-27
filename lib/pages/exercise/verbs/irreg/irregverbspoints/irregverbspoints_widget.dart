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
import 'irregverbspoints_model.dart';
export 'irregverbspoints_model.dart';

class IrregverbspointsWidget extends StatefulWidget {
  const IrregverbspointsWidget({
    super.key,
    required this.qn,
    required this.type,
  });

  final int? qn;
  final int? type;

  static String routeName = 'irregverbspoints';
  static String routePath = '/irregverbspoints';

  @override
  State<IrregverbspointsWidget> createState() => _IrregverbspointsWidgetState();
}

class _IrregverbspointsWidgetState extends State<IrregverbspointsWidget> {
  late IrregverbspointsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IrregverbspointsModel());

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
            'Irregular Verbs Practice',
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
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                () {
                                  if (FFAppState().irregverbqns.elementAtOrNull(
                                          functions.misc4(
                                              widget!.type!, widget!.qn!)!) ==
                                      0) {
                                    return 'You\'re in practice mode. Take off practice mode to get points and unlock the next word.';
                                  } else if (FFAppState()
                                          .irregverbqns
                                          .elementAtOrNull(functions.misc4(
                                              widget!.type!, widget!.qn!)!)! <=
                                      4) {
                                    return 'Not enough correct answers. Try again.';
                                  } else {
                                    return 'Congratulations! You have cleared this word.';
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
                            if (FFAppState().irregverbqns.elementAtOrNull(
                                    functions.misc4(
                                        widget!.type!, widget!.qn!)!)! <=
                                4)
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.goNamed(
                                        Irregverb1typeWidget.routeName,
                                        queryParameters: {
                                          'regirg': serializeParam(
                                            1,
                                            ParamType.int,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: 'Try again',
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
                                  text: 'End exercise',
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
