import 'package:bmi/BMI_Claculate.dart';
import 'package:bmi/BMI_Udemy/BMI_Udemy.dart';
import 'package:bmi/BMI_Udemy/Screen_Result.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF1C2135),
          scaffoldBackgroundColor: Color(0xFF1C2135),accentColor: Color(0xFF5E606F)),
      debugShowCheckedModeBanner: false,
      home: BmiUdemy(),
    );
  }
}
