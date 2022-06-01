import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  // const BmiResult({Key? key}) : super(key: key);

  BmiResult(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText,
      @required this.perfectWeight});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String perfectWeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Result",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 17, horizontal: 15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Your Result",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ))),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF333244),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876)),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(width: 20,),
                      Text(
                        "Your Perfect Weight is  ",
                        style: TextStyle(fontSize: 22),textAlign: TextAlign.center,
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "($perfectWeight)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow),
                          ),
                          Text(
                            " Kg",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                      SizedBox(width: 25,)
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              color: Color(0xFFE83D67),
              height: 65,
              width: double.infinity,
              child: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFFFFD6E6),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
