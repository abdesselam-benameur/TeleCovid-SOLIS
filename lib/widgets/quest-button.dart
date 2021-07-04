import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';

class QuestionnaireButton extends StatefulWidget {
  const QuestionnaireButton(this.text, this.onPressed);
  final String text;
  final void Function()? onPressed;

  @override
  _QuestionnaireButtonState createState() => _QuestionnaireButtonState();
}

class _QuestionnaireButtonState extends State<QuestionnaireButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(5),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: widget.onPressed,
      child: Container(
        alignment: Alignment(0, 0),
        width: 110,
        height: 35,
        child: Text(
          widget.text,
          style: GoogleFonts.lato(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
