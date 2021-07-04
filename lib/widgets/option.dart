import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Option extends StatelessWidget {
  const Option(this.i);
  final int i;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$i");
      },
      child: Column(
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "${this.i}",
            style: GoogleFonts.lato(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
