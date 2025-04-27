import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adjexpln_model.dart';
export 'adjexpln_model.dart';

class AdjexplnWidget extends StatefulWidget {
  const AdjexplnWidget({super.key});

  static String routeName = 'adjexpln';
  static String routePath = '/adjexpln';

  @override
  State<AdjexplnWidget> createState() => _AdjexplnWidgetState();
}

class _AdjexplnWidgetState extends State<AdjexplnWidget> {
  late AdjexplnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdjexplnModel());

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
              context.safePop();
            },
          ),
          title: Text(
            'Adjectives Explained',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: PageView(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                color: Color(0xFFFF0000),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(24.0),
                                                child: Text(
                                                  'Explanation',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Adjectives describe a noun. \n\nFor Latin adjectives, they are also declined just like noun declensions. However, they are only declined for 1st, 2nd, and 3rd declensions. They do not have 4th or 5th declensions.\n\nThis means that if you already mastered the endings for 1st, 2nd and 3rd declensions, these exercises will be a breeze.\n',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                color: Color(0xFFFF0000),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(24.0),
                                                child: Text(
                                                  '1st/2nd Declension Adjectives',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'When an adjective describes a noun, it agrees with its case and gender. For example:\n\nThe tall cup\nPoculum altum\n\nThe tall girl\nPuella alta\n\nThe tall friend\nAmicus altus\n\nHowever, it only declines as 1st & 2nd declensions, so it won’t match with 3rd, 4th, or 5th declension nouns. For example:\n\nThe tall mother\nMāter alta\n\nThe tall father\nPater altus\n\nThe long name\nNōmen longum\n\nSo, combining 1st/2nd declension adjectives also requires knowledge of the gender for a noun.\n\nThe adjective Altus has 3 dictionary entries:\n\nAltus, Alta, Altum\n',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                color: Color(0xFFFF0000),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(24.0),
                                                child: Text(
                                                  '3rd Declension Adjectives',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                '3rd declension adjectives are declined exactly like 3rd declension nouns and also agree with its case.\n\nThe dictionary entries for 3rd declension adjectives are different. \n\nFor example, the 1st/2nd declension adjectives are masculine, feminine, neuter. (Altus, Alta, Altum)\n\nFor 3rd declension adjectives, they’re dependent upon what’s called a “termination”.\n\nThe term \"termination\" refers to how many different forms the adjective has in the nominative singular for the three genders (masculine, feminine, and neuter).\n\nFor example, a 1-termination adjective entry looks like:\n\nNominative Singular, Genitive Singular\n\nferox, ferocis – fierce\naudax, audacis – bold, daring\nsapiens, sapientis – wise\n\nWhen you decline a 1-termination adjective, the first word of the dictionary entry is the nominative singular form for masculine, feminine, and neuter.\n\nFor 2-termination adjective entries:\n\nMasculine/Feminine, Neuter\n\nbrevis, breve – short\nfortis, forte – strong, brave\ngravis, grave – heavy, serious\n\nWhen you decline a 2-termination adjective, the nominative singular form (the left word which always ends with -is) is the same for nominative singular masculine and feminine as well as the genitive singular. \n\nBut, the other word (on the right which always ends with -e) is the nominative singular form for the neuter.\n\nFor example:\n\nbrevis, breve – short\n\nMasculine/Feminine:\n\nNominative (Singular, Plural): Brevis, Brevēs\nGenitive (Singular, Plural): Brevis, Brevium\n\nNeuter:\n\nNominative (Singular, Plural): Breve, Brevia\nGenitive (Singular, Plural): Brevis, Brevium\n\nFor 3-termination adjective entries:\n\nacer, acris, acre – sharp, fierce\nceler, celeris, celere – swift, quick\nalacer, alacris, alacre – eager, lively\n\nJust like 1st/2nd declension adjectives, it’s formatted: Masculine, Feminine, Neuter.\n\nThis means the nominative singular form is different for each gender and uses the feminine as the genitive singular for all genders.\n\nFor example:\n\nacer, acris, acre – sharp, fierce\n\nMasculine:\n\nNominative (Singular, Plural): Acer, Acrēs\nGenitive (Singular, Plural): Acris, Acrium\n\nFeminine:\n\nNominative (Singular, Plural): Acris, Acrēs\nGenitive (Singular, Plural): Acris, Acrium\n\nNeuter:\n\nNominative (Singular, Plural): Acre, Acria\nGenitive (Singular, Plural): Acris, Acrium\n',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              border: Border.all(
                                                color: Color(0xFFFF0000),
                                              ),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsets.all(24.0),
                                                child: Text(
                                                  'Summary',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                '1st/2nd declension adjectives are declined exactly like 1st & 2nd declension nouns and match the gender and case for the nouns it describes.\n\nDictionary entries for 1st/2nd declension adjectives are:\n\nMasculine, Feminine, Neuter\nAltus, Alta, Altum\n\n3rd declension adjectives are declined exactly like 3rd declension nouns and match the gender and case for the nouns it describes. \n\nHowever, there are also terminations which vary depending on the adjective.\n\nDictionary entries for each look like this:\n\n1-termination:\n\nNominative singular, Genitive singular\nFerox, Ferocis\n\n2-termination:\n\n(Masculine/Feminine) Nominative singular and genitive singular, Neuter singular\nBrevis, Breve\n\n3-termination:\n\nMasculine (Nominative Singular), Feminine (Nominative Singular and Genitive Singular), Neuter (Nominative Singular)\nAcer, Acris, Acre\n\nThis might seem like a headache, but you don’t have to worry about memorizing them, because they become second nature once you master them through exercises and read them in Latin texts and dictionaries.\n',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Raleway',
                                                          color: Colors.white,
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            count: 4,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              safeSetState(() {});
                            },
                            effect: smooth_page_indicator.SlideEffect(
                              spacing: 8.0,
                              radius: 8.0,
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              dotColor: Color(0x47000000),
                              activeDotColor: Colors.black,
                              paintStyle: PaintingStyle.fill,
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
    );
  }
}
