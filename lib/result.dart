import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
        Text(
          "Your Result",
          style: TextStyle(
            fontSize: 26,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.symmetric(vertical: 140, horizontal: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromRGBO(28, 40, 51, 0.8),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "UNDERWEIGHT",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30),
              Text(
                "16",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(height: 30),
              Text(
                "Normal BMI Range:",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "18.5-25 Kg/m",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30),
              Text(
                "You Are Under Weight",
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
        ),
        SizedBox(height: 5),
        InkWell(
          onTap: () {},
          child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "RECALCULATE BMI",
                style: TextStyle(color: Colors.white),
              ))),
        )
      ]),
    );
  }
}
