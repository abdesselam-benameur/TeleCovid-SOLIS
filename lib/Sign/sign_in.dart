import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:tele_covid_solis/screens/bottom_nav_screen.dart';

import 'Constant.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password, _name;

  get ktextinptDecoration => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Center(
                child: Text(
                  'Se connecter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kdefaultPadding * 3),
                child: TextFormField(
                  decoration: ktextinptDecoration,
                  onSaved: (input) => _email = input!,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kdefaultPadding * 3),
                child: TextFormField(
                  validator: (input) {
                    if (input!.length < 6) {
                      return 'Longer password please';
                    }
                  },
                  decoration: ktextinptDecoration,
                  onSaved: (input) => _password = input!,
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: kdefaultPadding * 5.5),
                child: RaisedButton(
                  child: Container(
                    width: 350,
                    height: 50,
                    child: Center(
                      child: Text(
                        "  Se connecter ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  onPressed: signIn,
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: kPrimaryColor,
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          )),
    );
  }

  Future<void> signIn() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNavScreen()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
