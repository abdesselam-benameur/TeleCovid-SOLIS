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
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Untitled.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment(0, 0),
                  child: Text(
                    'Informations Personnelles',
                    // style: FlutterFlowTheme.title3.override(
                    //   fontFamily: 'Poppins',
                    // ),
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
                    'Informations Personnelles',
                    // style: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  alignment: Alignment(0, 0),
                  child: Text(
                    'Informations Personnelles',
                    // style: FlutterFlowTheme.bodyText1.override(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
