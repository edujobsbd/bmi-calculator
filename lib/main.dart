import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Color(0xFF0A0E21),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          )
        ),
        appBarTheme: const AppBarTheme(
         backgroundColor: Color(0xFF0A0E21),
       )
      ),
      home: const Input_Page(title: 'BMI CALCULATOR'),
    );
  }
}
