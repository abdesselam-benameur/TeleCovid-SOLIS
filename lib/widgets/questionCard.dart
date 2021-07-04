import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';
import 'package:tele_covid_solis/widgets/quest-button.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  final Widget widget;
  const QuestionCard({required this.question, required this.widget});
  // final QuestionController questionController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 15, 20, 30),
      // padding: EdgeInsets.all(20),
      // width: 100,
      // height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 25),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
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
                  Expanded(
                    flex: 1,
                    child: FaIcon(
                      FontAwesomeIcons.solidHandPointRight,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      question,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Flexible(child: widget),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuestionnaireButton(
                      'Précédent',
                      Provider.of<QuestionController>(context, listen: false)
                          .decrementQnNum),
                  QuestionnaireButton(
                      'Suivant',
                      Provider.of<QuestionController>(context, listen: false)
                          .incrementQnNum),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//QuestTextField(),
