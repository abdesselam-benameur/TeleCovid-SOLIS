import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tele_covid_solis/widgets/option.dart';

class QuestOptions extends StatefulWidget {
  const QuestOptions({
    Key? key,
  }) : super(key: key);

  @override
  _QuestOptionsState createState() => _QuestOptionsState();
}

class _QuestOptionsState extends State<QuestOptions> {
  late String _option;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Option(0),
              Option(1),
              Option(2),
              Option(3),
              Option(4),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFA5EBBC),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        ],
      ),
    );
  }
}
