import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'verb03_widget.dart' show Verb03Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Verb03Model extends FlutterFlowModel<Verb03Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for verb widget.
  FocusNode? verbFocusNode;
  TextEditingController? verbTextController;
  String? Function(BuildContext, String?)? verbTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    verbFocusNode?.dispose();
    verbTextController?.dispose();
  }
}
