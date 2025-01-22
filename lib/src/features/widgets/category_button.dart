import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Image? image;
  final String? text;
  final Icon? icon;
  final VoidCallback onPressed;

  const CategoryButton({
    super.key,
    this.image,
    this.text,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFEEE1F5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.all(8.0),
        elevation: 0,
      ),
      child: image != null
          ? image!
          : text != null
              ? Text(
                  text!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              : icon ?? Container(),
    );
  }
}
