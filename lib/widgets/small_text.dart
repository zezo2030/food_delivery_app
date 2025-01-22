import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  double height;
  SmallText({
    super.key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.height = 1.2,
    this.size = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: size,
          color: color,
          height: height,
        )
    );
  }
}
