import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../components/round_icon_button.dart';
import '../constants.dart';
import '../calculator_brain.dart';
import 'results_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: kBMICalculatorTheme,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULAOTR"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text(
                          "cm",
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8d8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffe81555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: NumberWidget(
                        label: "WEIGHT",
                        initialValue: weight,
                        onValueChange: (value) {
                          weight = value;
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: NumberWidget(
                        label: "AGE",
                        initialValue: age,
                        onValueChange: (value) {
                          age = value;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              label: "CALCULATE",
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.getBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class NumberWidget extends StatefulWidget {
  final String label;
  final int initialValue;
  final Function(int) onValueChange;
  const NumberWidget({
    super.key,
    required this.label,
    required this.initialValue,
    required this.onValueChange,
  });

  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  late int value;
  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  --value;
                  widget.onValueChange(value);
                });
              },
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  ++value;
                  widget.onValueChange(value);
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
