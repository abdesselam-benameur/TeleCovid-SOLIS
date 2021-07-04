import 'package:flutter/material.dart';

class QuestTextField extends StatelessWidget {
  const QuestTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
