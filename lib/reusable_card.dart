import 'package:flutter/material.dart';

class Reusablewidget extends StatelessWidget {
  @override
  Reusablewidget({@required this.colour, this.cardChild, this.onpress});
  final Color colour;
  final cardChild;
  final Function onpress;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
