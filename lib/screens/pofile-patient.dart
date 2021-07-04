import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_covid_solis/Model/patientModel.dart';
import 'package:tele_covid_solis/config/palette.dart';
import 'package:tele_covid_solis/widgets/custom_app_bar.dart';
import 'package:tele_covid_solis/widgets/info-m%C3%A9dicales.dart';
import 'package:tele_covid_solis/widgets/info-personnelles.dart';

class ProfilePatient extends StatelessWidget {
  int index;
  ProfilePatient({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Patients().getdata()[index];
    return Scaffold(
      // appBar: CustomAppBar("Mon Profil"),

      backgroundColor: Color(0xFF473F97),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
          decoration: BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                //  padding: EdgeInsets.only(top: 32),
                width: 150,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 7, color: Colors.blue),
                ),
                child: Image.asset(
                  data.photo,
                ),
              ),
              InfoPersonnelles(
                nomComplet: data.nom,
                age: data.age,
                adrese: data.adresse,
                numTel: data.numero,
              ),
              InfoMedicales(index: index),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
