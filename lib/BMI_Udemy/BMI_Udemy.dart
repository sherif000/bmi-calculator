import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Logic.dart';
import 'Screen_Result.dart';

class BmiUdemy extends StatefulWidget {
  @override
  _BmiUdemyState createState() => _BmiUdemyState();
}

class _BmiUdemyState extends State<BmiUdemy> {
  bool isMale = true;
  double height = 150;
  int weight = 55;
  int age = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculatio",
          style: TextStyle(
              color: Color(0xFFFAFBFF),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:
                            (isMale) ? Color(0xFF323244) : Color(0xFF24263B)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8D8F9C)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:
                                isMale ? Color(0xFF24263B) : Color(0xFF323244)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF8D8F9C)),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Color(0xFF333244),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8E909F)),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${height.round()}",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFEFEFE)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDCDFE8)),
                      ),
                    ],
                  ),
                  Slider(
                      activeColor: Color(0xFFE5416C),
                      inactiveColor: Color(0xFF9597A6).withOpacity(0.7),
                      value: height,
                      max: 250,
                      min: 95,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF333244)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF9594A2)),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color(0xFF5E606F),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: "weight-",
                              child: Icon(
                                Icons.remove,
                                size: 30,
                                color: Colors.white,
                              ),
                              mini: true,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF5E606F),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              heroTag: "weight+",
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF333244)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF9594A2)),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Color(0xFF5E606F),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              heroTag: "age-",
                              child: Icon(
                                Icons.remove,
                                size: 30,
                                color: Colors.white,
                              ),
                              mini: true,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF5E606F),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              heroTag: "age+",
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          GestureDetector(
            onTap: () {
              LogicResult logic = LogicResult(height: height, weight: weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BmiResult( perfectWeight: logic.getPerfectWeight(gender: isMale),
                            bmiResult: logic.bmiClac(),
                            interpretation: logic.getInterpretation(),
                            resultText: logic.getResult(),
                          )));
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              color: Color(0xFFE83D67),
              height: 58,
              width: double.infinity,
              child: Center(
                child: Text(
                  "CALCULATE",
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
