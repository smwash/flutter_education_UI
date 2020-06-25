import 'package:education_flutter/constants.dart';

import 'package:flutter/material.dart';

import 'widgets/bottomNav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education UI',
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
      ),
      home: BottomNav(),
    );
  }
}
