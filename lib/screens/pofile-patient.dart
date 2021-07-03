import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePatient extends StatelessWidget {
  const ProfilePatient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  'assets/images/pic.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment(0, 0),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 12, 22, 10),
                    child: Column(
                      children: [
                        Text(
                          'Informations Personnelles',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text('Nom complet'), flex: 1),
                            // Flexible(child: Container(), flex: 1),
                            Flexible(
                                child: Text("Abdesselam Benameur"), flex: 2)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text('Age'), flex: 1),
                            // Flexible(child: Container(), flex: 1),
                            Flexible(child: Text('21 ans'), flex: 2),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text('Adresse'), flex: 1),
                            // Flexible(child: Container(), flex: 1),
                            Flexible(
                                child: Text(
                                    'Quartier al-zohour, N’gaous, Wilaya de Batna'),
                                flex: 2),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text('N° Téléphone'), flex: 1),
                            Flexible(child: Text('0664494457'), flex: 2),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment(0, 0),
                  child: Text(
                    'Informations Médicales',
                    // style: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
