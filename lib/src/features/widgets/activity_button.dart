import 'package:flutter/material.dart';
import 'package:task/src/core/utils/color_resources.dart';

class CustomButtons extends StatelessWidget {
  final VoidCallback onJoinNowPressed;
  final VoidCallback onMyPointsPressed;

  const CustomButtons({
    super.key,
    required this.onJoinNowPressed,
    required this.onMyPointsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorResources.black, // Button background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // Button border radius
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
          ),
          onPressed: onJoinNowPressed,
          child: Text(
            'Join Now',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorResources.black, // Button background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4), // Button border radius
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Button padding
          ),
          onPressed: onMyPointsPressed,
          child: Text(
            'My Points',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
