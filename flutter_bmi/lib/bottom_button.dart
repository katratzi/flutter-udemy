import 'package:flutter/cupertino.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final kLargeButtonTextStyle =
      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

  BottomButton({this.onPressed, this.label});

  final Function onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
