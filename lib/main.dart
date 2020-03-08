import 'package:flutter/material.dart';
import 'package:intranet/src/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intranet MJII',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
