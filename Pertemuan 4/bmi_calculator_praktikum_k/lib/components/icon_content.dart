import 'package:flutter/material.dart';
import 'package:bmi_calculator_praktikum_k/screens/input_page.dart';
import 'package:bmi_calculator_praktikum_k/constant.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    @required this.icon,
    @required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text('$label', style: kLabelStyle)
      ],
    );
  }
}
