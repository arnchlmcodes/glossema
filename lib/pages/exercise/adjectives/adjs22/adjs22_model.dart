import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'adjs22_widget.dart' show Adjs22Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Adjs22Model extends FlutterFlowModel<Adjs22Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomsing widget.
  FocusNode? nomsingFocusNode;
  TextEditingController? nomsingTextController;
  String? Function(BuildContext, String?)? nomsingTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomsingFocusNode?.dispose();
    nomsingTextController?.dispose();
  }
}
