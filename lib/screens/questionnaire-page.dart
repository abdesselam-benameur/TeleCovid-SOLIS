import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionnairePageWidget extends StatefulWidget {
  //QuestionnairePageWidget({required Key key}) : super(key: key);

  @override
  _QuestionnairePageWidgetState createState() =>
      _QuestionnairePageWidgetState();
}

class _QuestionnairePageWidgetState extends State<QuestionnairePageWidget> {
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF473F97),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Question 1',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          //FlutterFlowTheme.title1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidHandPointRight,
                              color: Colors.black,
                              size: 28,
                            ),
                            SizedBox(width: 20),
                            Container(
                              // width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                              ),
                              alignment: Alignment(0, 0),
                              child: Text(
                                'Mesurez votre température',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.lato(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: Color(0xFFE2E0EE),
                            hintText: 'Votre réponse',
                            // hintStyle: FlutterFlowTheme.subtitle1.override(
                            //   fontFamily: 'Poppins',
                            // ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.subtitle1.override(
                          //   fontFamily: 'Poppins',
                          // ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            child: Text('Précédent'),
                            // options: FFButtonOptions(
                            //   width: 130,
                            //   height: 40,
                            //   color: FlutterFlowTheme.primaryColor,
                            //   textStyle: FlutterFlowTheme.subtitle2.override(
                            //     fontFamily: 'Poppins',
                            //     color: Colors.white,
                            //   ),
                            //   borderSide: BorderSide(
                            //     color: Colors.transparent,
                            //     width: 1,
                            //   ),
                            //   borderRadius: 12,
                            // ),
                          ),
                          TextButton(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            child: Text('Suivant'),
                            // options: FFButtonOptions(
                            //   width: 130,
                            //   height: 40,
                            //   color: FlutterFlowTheme.primaryColor,
                            //   textStyle: FlutterFlowTheme.subtitle2.override(
                            //     fontFamily: 'Poppins',
                            //     color: Colors.white,
                            //   ),
                            //   borderSide: BorderSide(
                            //     color: Colors.transparent,
                            //     width: 1,
                            //   ),
                            //   borderRadius: 12,
                            // ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
