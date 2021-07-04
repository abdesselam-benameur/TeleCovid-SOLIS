import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tele_covid_solis/controllers/question_controller.dart';

class OptionWidget extends StatefulWidget {
  OptionWidget(this.option);
  String option;
  bool selected = false;

  @override
  _OptionWidgetState createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = true;
          // Provider.of<QuestionController>(context, listen: false)
          //     .selectAnswer(widget.option);
        });
      },
      // if ((widget.selected == false) &&
      //     (widget.option !=
      //         Provider.of<QuestionController>(context, listen: false)
      //             .answerSelected))
      //   setState(() {
      //     widget.selected = true;
      //     Provider.of<QuestionController>(context, listen: false)
      //         .selectAnswer(widget.option);
      //   });
      // if (!widget.selected) {
      //   Provider.of<QuestionController>(context).answerSelected =
      //       widget.option;
      //   widget.selected = true;
      //   notifyListeners();
      // }
      child: Column(
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              color: widget.selected ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black),
            ),
          ),
          SizedBox(height: 8),
          Text(
            widget.option,
            style: GoogleFonts.lato(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
