import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task/src/core/utils/custom_themes.dart';
import 'package:task/src/features/widgets/activity_button.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You are close to your goal',
                  style: titilliumExremeSmall.copyWith(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 8),
                Text('Join more sport activities\nto collect more points',
                    style: titilliumExremeSmall.copyWith(fontSize: 12), textAlign: TextAlign.left),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButtons(
                      onJoinNowPressed: () {},
                      onMyPointsPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            CircularPercentIndicator(
              radius: kIsWeb ? 50.0 : 25.0,
              lineWidth: 5.0,
              percent: 0.7,
              center: Text('27'),
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
