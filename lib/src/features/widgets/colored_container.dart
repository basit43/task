import 'package:flutter/material.dart';

class ColoredTextContainer extends StatelessWidget {
  final String text;

  const ColoredTextContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    print('text is: $text');
    Color backgroundColor;

    switch (text.toLowerCase()) {
      case 'medium':
        backgroundColor = Color(0xFFB39DFF);
        break;
      case 'light':
        backgroundColor = Color(0xFF99D1FF);
        break;
      case 'childcare':
        backgroundColor = Color(0xFF7CCF7D);
        break;
      case 'high':
        backgroundColor = Color(0xFFFFB04B);
        break;
      default:
        backgroundColor = Colors.grey;
    }

    Color textColor = backgroundColor.withValues(alpha: 0.2); // Apply reduced opacity

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: textColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: backgroundColor,
            fontSize: 10,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
