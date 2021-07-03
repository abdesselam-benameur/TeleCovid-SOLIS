import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';
import 'package:tele_covid_solis/widgets/quest-button.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // QuestionController _questionController = Get.put(QuestionController());
    QuestionController _questionController = QuestionController();
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
            Expanded(
              child: PageView(
                controller: _questionController.pageController,
                children: [
                  QuestionCard(_questionController),
                  QuestionCard(_questionController),
                  QuestionCard(_questionController),
                ],
              ),
              // child: PageView.builder(
              //   // Block swipe to next qn
              //   // physics: NeverScrollableScrollPhysics(),
              //   controller: _questionController.pageController,
              //   onPageChanged: _questionController.updateTheQnNum,
              //   itemCount: _questionController.questions.length,
              //   itemBuilder: (context, index) => QuestionCard(),
              //   //question: _questionController.questions[index]),
              // ),
            ),
            // QuestionCard()
          ],
        ),
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard(this.questionController);
  final QuestionController questionController;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 25),
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
                    width: MediaQuery.of(context).size.width * 0.6,
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
                // controller: textController,
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
                QuestionnaireButton(
                    'Précédent', questionController.decrementQnNum),
                QuestionnaireButton(
                    'Suivant', questionController.incrementQnNum),
              ],
            )
          ],
        ),
      ),
    );
  }
}
