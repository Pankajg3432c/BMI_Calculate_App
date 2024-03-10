import 'dart:html';

import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double _value = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.all(10.0)),
        Text(
          "BMI",
          textAlign: TextAlign.start,
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(28, 40, 51, 0.8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/male.png",
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "MALE",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(28, 40, 51, 0.8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/female.png",
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "FEMALE",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(28, 40, 51, 0.8),
                ),
                child: Column(
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "195",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    Slider(
                      min: 0.0,
                      max: 100.0,
                      value: _value,
                      activeColor: Colors.orangeAccent,
                      inactiveColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(28, 40, 51, 0.8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WEIGHT",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "60",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orangeAccent),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orangeAccent),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(28, 40, 51, 0.8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "AGE",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "17",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orangeAccent),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orangeAccent),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 8),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => ResultScreen()));
          },
          child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "CALCULATE BMI",
                style: TextStyle(color: Colors.white),
              ))),
        )
      ]),
    );
  }
}
