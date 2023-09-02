import 'package:flutter/material.dart';
import 'package:interv/constant/color.dart';
import 'package:interv/view/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master-Detail',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldColor,
        useMaterial3: true,

      ),
      home: HomePage(),
    );
  }
}





