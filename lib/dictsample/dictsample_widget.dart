import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dictsample_model.dart';
export 'dictsample_model.dart';

class DictsampleWidget extends StatefulWidget {
  const DictsampleWidget({super.key});

  static String routeName = 'dictsample';
  static String routePath = '/dictsample';

  @override
  State<DictsampleWidget> createState() => _DictsampleWidgetState();
}

class _DictsampleWidgetState extends State<DictsampleWidget> {
  late DictsampleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DictsampleModel());

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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            'Dictionary',
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
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Container(
                height: 650.0,
                decoration: BoxDecoration(
                  color: Color(0xFF81201A),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: AnimatedDefaultTextStyle(
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 64.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeIn,
                      child: Text(
                        'Dictionary Coming Soon',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
