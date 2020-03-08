import 'package:flutter/material.dart';
import './customWidgets.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intranet MJII'),
        backgroundColor: Color(0xFFDD4814),
      ),
      body: body(context),
    );
  }
}

Widget body(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: FittedBox(
      fit: BoxFit.fitWidth,
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              customContainer(
                  context: context,
                  image: 'portal_dalaman',
                  header: 'Portal Dalaman & E-Borang',
                  text: 'Senarai penuh surat edaran dalam MJII & E-Borang'),
              customContainer(
                  context: context,
                  image: 'books',
                  header: 'Tempahan Bilik Perpustakaan'),
              customContainer(
                  context: context,
                  image: 'nook',
                  header: 'E-Learning Portal',
                  text:
                      'Introductional Material Collection for Student Reference'),
              customContainer(
                  context: context,
                  image: 'student-male',
                  header: 'Database Pelajar',
                  text: 'Paparan pangkalan data pelajar MJII'),
              customContainer(
                  context: context, image: 'elections', header: 'E-Undi MPP'),
              customContainer(
                  context: context, image: 'idea-sharing', header: 'XTVT@MJII'),
            ],
          ),
          SizedBox(width: 15),
          Column(
            children: <Widget>[
              customContainer(
                  context: context,
                  image: 'ground-transportation',
                  header: 'Tempahan Kenderaan'),
              customContainer(
                  context: context,
                  image: 'training',
                  header: 'Tempahan Bilik Mesyuarat'),
              customContainer(
                  context: context,
                  image: 'test-partial-passed',
                  header: 'One Stop Survey',
                  text:
                      'Paparan survey-survey yang perlu diisi pelajar dan staf'),
              customContainer(
                  context: context,
                  image: 'cristiano-ronaldo',
                  header: 'Direktori Staf'),
              customContainer(
                  context: context,
                  image: 'rfid-sensor--v2',
                  header: 'RFID System'),
              SizedBox(
                height: 250,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
