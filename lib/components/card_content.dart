import 'package:flutter/material.dart';
import 'package:bmi_converter_practice_project/constants.dart';

class CardContent extends StatelessWidget {
  // Create properties
  final IconData icon;
  final String label; // Female or Male or others

  // Constructor
  CardContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon, // used to be FontAwesomeIcons.mars
          size: 80.0,
          color: Colors.black,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label, // used to be 'MALE'
          style:kLabelTextStyle,
        ),
      ],
    );
  }
}