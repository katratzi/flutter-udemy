import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData faIcon;

  IconContent({this.faIcon, this.text});

  final TextStyle kLabelTextStyle = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          faIcon,
          color: Colors.white,
          size: 72,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
