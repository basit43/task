import 'package:flutter/material.dart';
import 'package:task/src/core/utils/color_resources.dart';
import 'package:task/src/core/utils/custom_themes.dart';
import 'package:task/src/features/widgets/activity_card_button.dart';
import 'package:task/src/features/widgets/colored_container.dart';

class EventCard extends StatelessWidget {
  final String checkInTime;
  final String lateTime;
  final String title;
  final String location;
  final int spotsLeft;
  final List<String> priorities;
  final String price;

  const EventCard({
    super.key,
    required this.checkInTime,
    required this.lateTime,
    required this.title,
    required this.location,
    required this.spotsLeft,
    required this.priorities,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      checkInTime,
                      style: titilliumExremeSmall.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      lateTime,
                      style: titilliumExremeSmall.copyWith(fontSize: 12, color: ColorResources.grey),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: titilliumBold.copyWith(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: ColorResources.grey,
                    ),
                    Text(
                      location,
                      style: titilliumExremeSmall.copyWith(fontSize: 12, color: ColorResources.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '$spotsLeft',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                      child: ListView.builder(
                        shrinkWrap: true, // To make the list take only the required space
                        scrollDirection: Axis.horizontal, // Keep the list horizontal
                        itemCount: priorities.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ColoredTextContainer(text: priorities[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [Text(price), CustomCardButton(text: checkInTime == '9:00 AM' ? 'Join' : 'Sold Out')],
            ),
          ],
        ),
      ),
    );
  }
}
