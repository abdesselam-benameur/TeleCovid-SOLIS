import 'package:flutter/material.dart';

class InfoPersonnelles extends StatelessWidget {
  final String nomComplet;
  final String age;
  final String adrese;
  final String numTel;

  const InfoPersonnelles({
    required this.nomComplet,
    required this.age,
    required this.adrese,
    required this.numTel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 32, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(40),
        ),
        alignment: Alignment(0, 0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 12, 22, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Informations Personnelles',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              EntryRow(
                entryKey: 'Nom complet',
                value: nomComplet,
              ),
              EntryRow(
                entryKey: 'Age',
                value: '$age ans',
              ),
              EntryRow(
                entryKey: 'Adresse',
                value: adrese,
              ),
              EntryRow(
                entryKey: 'N° Téléphone',
                value: numTel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EntryRow extends StatelessWidget {
  // const EntryRow({String key, String value});
  final String entryKey;
  final String value;

  const EntryRow({required this.entryKey, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(child: Text(entryKey), flex: 1),
        Flexible(
            child: Text(
              value,
              textAlign: TextAlign.right,
            ),
            flex: 2),
      ],
    );
  }
}
