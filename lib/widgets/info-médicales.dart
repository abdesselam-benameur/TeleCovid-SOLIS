import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoMedicales extends StatelessWidget {
  const InfoMedicales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(40),
        ),
        alignment: Alignment(0, 0),
        child: Text(
          'Informations Médicales',
          style: GoogleFonts.lato(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
