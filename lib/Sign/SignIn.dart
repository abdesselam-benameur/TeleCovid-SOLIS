import 'package:flutter/material.dart';

import 'Constant.dart';
import 'SignUpScreen.dart';
import 'TextFiled.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Center(
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                'welcome back! Login to acces to your account data',
                style:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kdefaultPadding / 6),
              child: TextField(
                decoration: ktextinptDecoration,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kdefaultPadding / 6),
              child: TextField(
                decoration: ktextinptDecoration2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kdefaultPadding / 6),
              child: RaisedButton(
                child: Container(
                  width: 350,
                  height: 50,
                  child: Center(
                    child: Text(
                      "  LOG IN ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                color: Colors.orangeAccent,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kdefaultPadding * 3),
              child: Row(
                children: <Widget>[
                  Text(
                    'Don t Have an account',
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUP()),
                        );
                      },
                      child: Text(
                        'Sign Up Now!',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
