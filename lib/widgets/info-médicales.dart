import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_covid_solis/screens/line_chart_model.dart';

class InfoMedicales extends StatelessWidget {
  int index;
  InfoMedicales({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
      child: Container(
        width: 100,
        //height: MediaQuery.of(context).size.height * 1.5,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(40),
        ),
        alignment: Alignment(0, 0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36.0,
                  top: 24,
                ),
                child: Text(
                  'Informations Médicales',
                  style: GoogleFonts.lato(
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36.0,
                  top: 24,
                ),
                child: Text(
                  'Température',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
              ),
              child: LineChartSample2(
                index: index,
                text: "Température",
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36.0,
                  top: 24,
                ),
                child: Text(
                  "fréquence cardiaque",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child:
                  LineChartSample2(index: index, text: "fréquence cardiaque"),
            ),
            SizedBox(
              height: 22,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 36.0,
                  top: 24,
                ),
                child: Text(
                  "fréquence respiratoire",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: LineChartSample2(
                  index: index, text: "fréquence respiratoire"),
            ),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}
