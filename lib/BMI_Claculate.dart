import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  @override
  _BmiCalcState createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2135),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C2135),
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container( padding: EdgeInsets.all(15), margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF333244)),
                    child: Column(
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 20, color: Color(0xFF757486)),
                        ),
                        Text(
                          "60",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF5C5E6D),
                                radius: 22,
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 38),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Color(0xFF5C5E6D),
                                radius: 21,
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Container( margin: EdgeInsets.all(15),padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF333244)),
                      child: Column(
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF757486)),
                          ),
                          Text(
                            "60",
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFF5C5E6D),
                                  radius: 22,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 38),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFF5C5E6D),
                                  radius: 21,
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 35),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
