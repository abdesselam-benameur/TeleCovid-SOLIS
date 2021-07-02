import 'package:flutter/material.dart';
import 'package:tele_covid_solis/Messeges/contactPage.dart';
import 'package:tele_covid_solis/Model/patientModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Patient> data = Patients().getdata();
  final TextEditingController _searchPatient = new TextEditingController();
  final primary = Color.fromARGB(255, 71, 63, 151);
  final secondary = Color.fromARGB(200, 77, 121, 255);
  final third = Color.fromARGB(255, 255, 77, 88);
  String _searchText = "";

  _HomeState() {
    _searchPatient.addListener(() {
      if (_searchPatient.text.isEmpty) {
        setState(() {
          _searchText = "";
        });
      } else {
        setState(() {
          _searchText = _searchPatient.text;
        });
      }
      ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_open),
              onPressed: () {
                //Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.message), //notifications_active_rounded
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ContactPage();
                    }))
                  })
        ],
        backgroundColor: primary,
        centerTitle: true,
        title: Container(
          height: 35,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                controller: _searchPatient,
                cursorColor: Theme.of(context).primaryColor,
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  hintText: "Rechercher ",
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                  prefixIcon: Material(
                    elevation: 0.0,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Icon(Icons.search),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 30),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ((_searchText == null) || (_searchText == ""))
                    ? buildCard(context, index)
                    : ((data[index]
                                .nom
                                .toLowerCase()
                                .contains(_searchText.toLowerCase()) ||
                            data[index]
                                .adresse
                                .toLowerCase()
                                .contains(_searchText.toLowerCase()) ||
                            data[index]
                                .age
                                .toLowerCase()
                                .contains(_searchText.toLowerCase()))
                        ? buildCard(context, index)
                        : Container());
              }),
        ),
      ),
    ));
  }

  Widget buildCard(BuildContext context, int index) {
    final EdgeInsets x;
    if (index == 0) {
      x = EdgeInsets.only(top: 20, left: 5, right: 5, bottom: 5);
    } else {
      x = EdgeInsets.symmetric(vertical: 5, horizontal: 5);
    }
    return GestureDetector(
      onTap: () {
        //Route route = MaterialPageRoute(builder: (context)=>profil());
        //Navigator.push(context, route);
      }, // go to the Patient profile
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        width: double.infinity,
        height: 100,
        margin: (index == 7)
            ? EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 70)
            : x,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //photo
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(right: 10, top: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                //border: Border.all(width: 3, color: secondary),
                image: DecorationImage(
                    image: AssetImage(
                      "images/patient.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            //patient inf
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          data[index].nom,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: secondary,
                              size: 20,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(data[index].adresse,
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 13,
                                    letterSpacing: .3)),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        //iconSize: 20,
                        color: secondary,
                        onPressed: () => {})
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
