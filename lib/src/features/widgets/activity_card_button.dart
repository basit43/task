import 'package:flutter/material.dart';

class CustomCardButton extends StatelessWidget {
  final String text;

  const CustomCardButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16, // Text size
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
