import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour, //Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0, //heightt,
      width: 179.0, //widthh,
    );
  }
}
