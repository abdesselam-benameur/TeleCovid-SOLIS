import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:tele_covid_solis/widgets/optionWidget.dart';

class QuestOptions extends StatelessWidget {
  final List<String> options;
  final String hintText;
  QuestOptions({
    required this.options,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      // height: 100,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: options.map((option) => OptionWidget(option)).toList(),
          ),
          SizedBox(height: hintText != '' ? 50 : 0),
          hintText != ''
              ? Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Color(0xFFA5EBBC),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/lamp.png",
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(22, 5, 0, 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Indice:',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Serif',
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                    hintText,
                                    style: TextStyle(
                                        // decoration: TextDecoration.underline,
                                        fontFamily: 'Serif',
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                ),
        ],
      ),
    );
  }
}
