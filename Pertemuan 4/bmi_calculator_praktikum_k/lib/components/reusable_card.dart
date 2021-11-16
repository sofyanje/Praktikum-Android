import 'package:flutter/material.dart';
import 'package:bmi_calculator_praktikum_k/screens/input_page.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardChild, @required this.colour, this.onPress});
  final Widget cardChild;
  final Color colour;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
