import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  TextOverflow overflow;
  BigText({
    super.key,
    required this.text,
    this.color = const Color(0xFF332d2b),
    this.overflow = TextOverflow.ellipsis,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w400,
      )
    );
  }
}
