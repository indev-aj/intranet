import 'package:flutter/material.dart';
import 'package:intranet/pages/e_learning.dart';
import 'package:intranet/pages/kenderaan.dart';
import 'package:intranet/pages/mesyuarat.dart';
import 'package:intranet/pages/mpp.dart';
import 'package:intranet/pages/perpustakaan.dart';
import 'package:intranet/pages/portal_dalaman.dart';
import 'package:intranet/pages/rfid.dart';
import 'package:intranet/pages/stud_database.dart';
import 'package:intranet/pages/stuff_dir.dart';
import 'package:intranet/pages/survey.dart';
import 'package:intranet/pages/xtvt.dart';

Widget customContainer({BuildContext context, String image, String header, String text = ""}) {
  return InkWell(
    onTap: () => _action(header, context),
    child: Container(
      height: 250,
      width: 350,
      // color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/$image.png'),
            Text(
              header,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Container(
              // color: Colors.blue,
              width: 200,
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

_action(String header, BuildContext context) {
  switch (header) {
    case 'Portal Dalaman & E-Borang':
      Navigator.push(context, MaterialPageRoute(builder: (context) => PortalDalaman()));
      break;
    case 'Tempahan Bilik Perpustakaan':
      Navigator.push(context, MaterialPageRoute(builder: (context) => Perpustakaan()));
      break;
    case 'E-Learning Portal':
      Navigator.push(context, MaterialPageRoute(builder: (context) => ELearning()));
      break;
    case 'Database Pelajar':
      Navigator.push(context, MaterialPageRoute(builder: (context) => StudDB()));
      break;
    case 'E-Undi MPP':
      Navigator.push(context, MaterialPageRoute(builder: (context) => MPP()));
      break;
    case 'XTVT@MJII':
      Navigator.push(context, MaterialPageRoute(builder: (context) => XTVT()));
      break;
    case 'Tempahan Kenderaan':
      Navigator.push(context, MaterialPageRoute(builder: (context) => Kenderaan()));
      break;
    case 'Tempahan Bilik Mesyuarat':
      Navigator.push(context, MaterialPageRoute(builder: (context) => Mesyuarat()));
      break;
    case 'One Stop Survey':
      Navigator.push(context, MaterialPageRoute(builder: (context) => Survey()));
      break;
    case 'Direktori Staf':
      Navigator.push(context, MaterialPageRoute(builder: (context) => StuffDir()));
      break;
    case 'RFID System':
      Navigator.push(context, MaterialPageRoute(builder: (context) => RFID()));
      break;
  }
}
