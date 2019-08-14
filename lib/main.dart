import 'package:flutter/material.dart';

import 'bottomnavigation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: BottomNavigation(),

    );
  }
}