import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';
import 'package:tele_covid_solis/widgets/quest-button.dart';

class QuestionCard extends StatelessWidget {
  final String question;
  const QuestionCard(this.question);
  // final QuestionController questionController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
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
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                // inputFormatters: [
                //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                // ],
                // controller: textController,
                // obscureText: false,
                decoration: InputDecoration(
                  fillColor: Color(0xFFE2E0EE),
                  hintText: 'Votre réponse',

                  // hintStyle: FlutterFlowTheme.subtitle1.override(
                  //   fontFamily: 'Poppins',
                  // ),
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.black,
                  //     width: 1,
                  //   ),
                  //   borderRadius: const BorderRadius.only(
                  //     topLeft: Radius.circular(4.0),
                  //     topRight: Radius.circular(4.0),
                  //   ),
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.green,
                  //     width: 1,
                  //   ),
                  //   borderRadius: const BorderRadius.only(
                  //     topLeft: Radius.circular(4.0),
                  //     topRight: Radius.circular(4.0),
                  //   ),
                  // ),
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
                    'Précédent',
                    Provider.of<QuestionController>(context, listen: false)
                        .decrementQnNum),
                QuestionnaireButton(
                    'Suivant',
                    Provider.of<QuestionController>(context, listen: false)
                        .incrementQnNum),
              ],
            )
          ],
        ),
      ),
    );
  }
}
