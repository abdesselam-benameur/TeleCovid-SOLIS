import 'package:flutter/material.dart';

class Patient {
  String photo;
  String nom;
  String age;
  String adresse;
  String numero;
  Patient(
      {required this.photo,
      required this.nom,
      required this.age,
      required this.adresse,
      required this.numero});
}

class Patients {
  List<Patient> _patients = [
    //0
    Patient(
        photo: "assets/images/hamza.png",
        nom: "KORBAA Hamza",
        age: "21",
        adresse: "Mohamadia, Mascara",
        numero: "0667405218"),
    //1
    Patient(
        photo: "assets/images/Ayoub.png",
        nom: "Ayoub Titoun",
        age: "21",
        adresse: "Bordj menaiel, Alger",
        numero: "0665454850"),
    //2
    /*Patient(
        photo: "images/oussama.png",
        nom: "Oussama Benakmoume",
        age: "21",
        adresse: "Mohamadia, Alger",
        numero: "0674939657"),*/
    //3
    Patient(
        photo: "assets/images/zakaria.png",
        nom: "Boudefaa Zakaria",
        age: "20",
        adresse: "Aïn Kechra, Skikda",
        numero: "0244760280"),
    //4
    Patient(
        photo: "assets/images/Amel.png",
        nom: "Amel Beldjilali",
        age: "21",
        adresse: "M'kira, Tizi-Ouzou",
        numero: "0755142558"),
    /*//5
    Patient(
        photo: "images/sara.png",
        nom: "Djabelkhir Sarah",
        age: "20",
        adresse: "Oum-el-Bouaghi",
        numero: "0667405218"),
    //6
    Patient(
        photo: "images/mourad.png",
        nom: "Mourad Hassani",
        age: "21",
        adresse: "Bordj menaiel, Alger",
        numero: "0667405218"),
    //7
    Patient(
        photo: "images/abdeslam.png",
        nom: "Abdsesselam Benameur",
        age: "21",
        adresse: "N'gaous,Batna",
        numero: "0244977896"),*/
  ];

  List<Patient> getdata() {
    return _patients;
  }
}
