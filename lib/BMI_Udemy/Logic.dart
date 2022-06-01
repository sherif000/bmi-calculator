import 'package:flutter/material.dart';
import 'dart:math';

class LogicResult {
  LogicResult({this.weight, this.height});

  final int weight;
  final double height;
  double bmi;

  String getPerfectWeight({@required gender}){

    if(gender==true){

      return "${height.round()-100}";
    }
    else if (gender==false){
      return "${height.round()-110}";
    }


  }


  bmiClac() {
     bmi = weight / pow(height / 100, 2);

    return bmi.toStringAsFixed(1);
  }

  getResult(){
    if (bmi >= 25) {
      return 'Over weight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}
