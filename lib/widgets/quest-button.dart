import 'package:flutter/material.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';

class QuestionnaireButton extends StatelessWidget {
  const QuestionnaireButton(this.text, this.onPressed);
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: onPressed,
      child: Container(
        alignment: Alignment(0, 0),
        width: 110,
        height: 35,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
