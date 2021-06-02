import 'package:flutter/material.dart';

const labeltextstyle = TextStyle(fontSize: 16, color: Color(0xFF8D8E98));

class ReusableIcons extends StatelessWidget {
  ReusableIcons({@required this.icon, @required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labeltextstyle,
        ),
      ],
    );
  }
}
