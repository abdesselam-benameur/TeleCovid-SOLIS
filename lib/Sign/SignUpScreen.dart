import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'Constant.dart';
import 'Home.dart';
import 'TextFiled.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password, _name;
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
                  'Créer un nouveau compte',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
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
                  decoration: ktextinptDecoration2,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kdefaultPadding * 3),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Je suis un nouveau utilisateur',
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
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
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

/*class SignUP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Center(
            child: Text(
              'Hey there!',
              textAlign: TextAlign.center,a
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Center(
            child: Text(
              'create your own account and start your journey!',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(fontWeight: FontWeight.w300, color: Colors.black),
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
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kdefaultPadding / 6),
            child: TextField(
              decoration: ktextinptDecoration,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kdefaultPadding / 6),
            child: TextField(
              decoration: ktextinptDecoration,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kdefaultPadding / 6),
            child: TextField(
              decoration: ktextinptDecoration,
            ),
          ),
          SizedBox(
            height: 10,
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
                    "  Sign Up ",
                    style: Theme.of(context).textTheme.headline5.copyWith(
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
                  'Already have an account ?',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUP()),
                      );
                    },
                    child: Text(
                      'Log in Now!',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      )),
    );
  }
}*/
