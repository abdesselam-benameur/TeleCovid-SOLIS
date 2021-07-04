import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';
import 'package:tele_covid_solis/widgets/quest-options.dart';
import 'package:tele_covid_solis/widgets/questTextField.dart';
import 'package:tele_covid_solis/widgets/questionCard.dart';
import 'package:provider/provider.dart';

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
                    "Question ${Provider.of<QuestionController>(context).index + 1}",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        //FlutterFlowTheme.title1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  // Consumer<QuestionController>(
                  //   builder: (context, questionController, child) {
                  //     return Text(
                  //       "Question ${context.watch<QuestionController>().index + 1}",
                  //       style: GoogleFonts.lato(
                  //         textStyle: const TextStyle(
                  //           //FlutterFlowTheme.title1.override(
                  //           fontFamily: 'Poppins',
                  //           color: Colors.white,
                  //           fontSize: 30,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller:
                    Provider.of<QuestionController>(context).pageController,
                children: [
                  QuestionCard(
                    question: 'Mesurez votre température',
                    widget: QuestOptions(),
                  ), //(_questionController),
                  QuestionCard(
                    question: 'Mesurerez votre fréquence cardiaque',
                    widget: QuestTextField(),
                  ),
                  QuestionCard(
                    question: 'Mesurerez votre fréquence respiratoire',
                    widget: QuestTextField(),
                  ),

                  QuestionCard(
                    question: 'Décrivez votre gêne respiratoire (dypsnée).',
                    widget: QuestTextField(),
                  ),
                  QuestionCard(
                    question: 'Comment évaluez-vous votre toux?',
                    widget: QuestTextField(),
                  ),
                  QuestionCard(
                    question: // "Un frisson est une sensation de froid accompagnéede tremblements
                        'Avez-vous des frissons?',
                    widget: QuestTextField(),
                  ),
                  QuestionCard(
                    question:
                        'Depuis que vous avez rempli le dernier questionnaire, avez vous fait une malaise?',
                    widget: QuestTextField(),
                  ),
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
