import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bmi/constants.dart';
import 'package:flutter_bmi/reusable_card.dart';

import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
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
                        'Normal',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '18.3',
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Your bmi is low, eat more',
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
