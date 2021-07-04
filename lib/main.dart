import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:googleapis/chat/v1.dart';
import 'package:googleapis/fcm/v1.dart';
import 'package:tele_covid_solis/Messeges/contactPage.dart';
import 'package:tele_covid_solis/Messeges/message.dart';
import 'package:tele_covid_solis/doctor/home.dart';
import 'package:tele_covid_solis/screens/questionnaire-page.dart';
import 'package:tele_covid_solis/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool patient = true;
    return MaterialApp(
      title: 'TeleCovid',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // textTheme: GoogleFonts.lato(),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatPage(index: 5), //patient ? BottomNavScreen() : Home(),
      // home: QuestionnairePageWidget(),
    );
  }
}
