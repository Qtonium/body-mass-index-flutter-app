import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constant.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretations;
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretations});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATER"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
              ),
            ),
            Expanded(
              flex: 5,
              child: Reusablewidget(
                colour: kactivecolor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        interpretations,
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BMICalculator()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RECALCULATE",
                    style: kLargestyle,
                  ),
                ),
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 20),
                height: kbottomcoantainerheight,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kbottomcolor,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ));
  }
}
