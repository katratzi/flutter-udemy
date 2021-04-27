import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_bmi/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextStyle kLabelTextStyle = TextStyle(fontSize: 18);
  final TextStyle kNumberStyle = TextStyle(
    fontSize: 36.0,
    fontWeight: FontWeight.w900,
  );

  Gender gender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('BMI CALCULATOR'),
        // fixes overlapping navigation
        backgroundColor: CupertinoColors.darkBackgroundGray,
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      log('male tapped');
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      faIcon: FontAwesomeIcons.mars,
                      text: 'male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      log('female tapped');
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      faIcon: FontAwesomeIcons.venus,
                      text: 'female',
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  CupertinoSlider(
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    activeColor: Color(0xffeb1555),
                    thumbColor: CupertinoColors.white,
                    min: 120,
                    max: 220,
                    value: height.toDouble(),
                  ),
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
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            color: kBottomContainerColor,
          )
        ],
      ),
    );
  }
}
