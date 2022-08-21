import 'package:flutter/material.dart';
import 'input_page.dart';
import 'bottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText});

  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
                  child: Text(
            "RESULTS!!!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 75.0,
            ),
          ))),
          Expanded(
              child: Column(
            children: [
              Text(
                bmiResult,
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                resultText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ],
          )),
          Button(
            text: 'RE - CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
