import 'package:flutter/material.dart';
import 'package:tele_covid_solis/Sign/sign_in.dart';

import 'Constant.dart';

class Screenhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kdefaultPadding * 4),
            child: RaisedButton(
              child: Container(
                width: 350,
                height: 50,
                child: Center(
                  child: Text(
                    " Je suis un médecin ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(index: "doctor")));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              color: kPrimaryColor,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kdefaultPadding * 4),
            child: RaisedButton(
              child: Container(
                width: 350,
                height: 50,
                child: Center(
                  child: Text(
                    "Je suis un patient ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(index: "patient")));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              color: kPrimaryColor,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kdefaultPadding * 4),
            child: RaisedButton(
              child: Container(
                width: 350,
                height: 50,
                child: Center(
                  child: Text(
                    " Je suis un aidant ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(index: "aidant")));
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              color: kPrimaryColor,
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ]),
      ),
    );
  }
}
