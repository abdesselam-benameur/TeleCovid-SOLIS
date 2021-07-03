import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tele_covid_solis/Model/patientModel.dart';
import 'package:tele_covid_solis/widgets/info-m%C3%A9dicales.dart';
import 'package:tele_covid_solis/widgets/info-personnelles.dart';

class ProfilePatient extends StatelessWidget {
  int index;
  ProfilePatient({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Patients().getdata()[index];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFF473F97),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(19, 0, 19, 0),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 150,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
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
              InfoMedicales(),
            ],
          ),
        ),
      ),
    );
  }
}
