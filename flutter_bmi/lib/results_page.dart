import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/constants.dart';
import 'package:flutter_bmi/reusable_card.dart';

import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretaion;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretaion});

  @override
  Widget build(BuildContext context) {
    final kTitleTextStyle = TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
    );
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('BMI CALCULATOR'),
        // fixes overlapping navigation
        backgroundColor: CupertinoColors.darkBackgroundGray,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Your Results',
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
                        resultText,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        bmiResult,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          interpretaion,
                        ),
                      )
                    ],
                  ),
                )),
            BottomButton(
              label: 'Re-Calculate',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
