import 'package:flutter/material.dart';

import 'Constant.dart';

const ktextinptDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  /*icon: Icon(
      Icons.person_pin_circle,
      color: Colors.black,
    ),*/
  hintText: 'Email',
  hintStyle: TextStyle(
    color: Colors.black,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 0.5),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);

const ktextinptDecoration2 = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  /*icon: Icon(
      Icons.person_pin_circle,
      color: Colors.black,
    ),*/
  hintText: 'Mot de passe',
  hintStyle: TextStyle(
    color: Colors.black,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  ),
  counterText: 'Forgot your password?',
  counterStyle: TextStyle(color: Colors.black),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 0.5),
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);
