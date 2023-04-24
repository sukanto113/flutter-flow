import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: kBMICalculatorTheme,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              label: "RE-CALCULATE",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
