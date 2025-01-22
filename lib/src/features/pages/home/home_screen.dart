import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task/src/core/utils/color_resources.dart';
import 'package:task/src/core/utils/custom_themes.dart';
import 'package:task/src/features/widgets/activity_card.dart';
import 'package:task/src/features/widgets/category_button.dart';
import 'package:task/src/features/widgets/search_bar.dart';
import '../../widgets/event_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Sports';

  final List<Map<String, dynamic>> eventCardsData = [
    {
      'checkInTime': '9:00 AM',
      'lateTime': '(9:30 AM)',
      'title': 'Event 1 - Sports',
      'location': 'Room A',
      'spotsLeft': 10,
      'priorities': ['High', 'Medium'],
      'price': '€20',
      'category': 'Sports',
    },
    {
      'checkInTime': '10:00 AM',
      'lateTime': '10:30 AM',
      'title': 'Event 2 - Sports',
      'location': 'Room B',
      'spotsLeft': 15,
      'priorities': ['Medium', 'Childcare'],
      'price': '€25',
      'category': 'Sports',
    },
    {
      'checkInTime': '11:00 AM',
      'lateTime': '11:30 AM',
      'title': 'Event 3 - Food',
      'location': 'Room C',
      'spotsLeft': 20,
      'priorities': ['Light', 'Medium'],
      'price': '€30',
      'category': 'Food',
    },
    {
      'checkInTime': '12:00 PM',
      'lateTime': '12:30 PM',
      'title': 'Event 4 - Food',
      'location': 'Room D',
      'spotsLeft': 25,
      'priorities': ['High', 'Childcare'],
      'price': '€35',
      'category': 'Food',
    },
    {
      'checkInTime': '1:00 PM',
      'lateTime': '1:30 PM',
      'title': 'Event 5 - Kids',
      'location': 'Room E',
      'spotsLeft': 30,
      'priorities': ['High', 'Medium'],
      'price': '€40',
      'category': 'Kids',
    },
    {
      'checkInTime': '2:00 PM',
      'lateTime': '2:30 PM',
      'title': 'Event 6 - Kids',
      'location': 'Room F',
      'spotsLeft': 5,
      'priorities': ['Light', 'Medium'],
      'price': '€15',
      'category': 'Kids',
    },
    {
      'checkInTime': '3:00 PM',
      'lateTime': '3:30 PM',
      'title': 'Event 7 - Creative',
      'location': 'Room G',
      'spotsLeft': 12,
      'priorities': ['Medium', 'Childcare'],
      'price': '€50',
      'category': 'Creative',
    },
    {
      'checkInTime': '4:00 PM',
      'lateTime': '4:30 PM',
      'title': 'Event 8 - Creative',
      'location': 'Room H',
      'spotsLeft': 20,
      'priorities': ['High', 'Medium'],
      'price': '€45',
      'category': 'Creative',
    },
    {
      'checkInTime': '5:00 PM',
      'lateTime': '5:30 PM',
      'title': 'Event 9 - Sports',
      'location': 'Room I',
      'spotsLeft': 18,
      'priorities': ['High', 'Medium'],
      'price': '€30',
      'category': 'Sports',
    },
    {
      'checkInTime': '6:00 PM',
      'lateTime': '6:30 PM',
      'title': 'Event 10 - Food',
      'location': 'Room J',
      'spotsLeft': 22,
      'priorities': ['Light', 'High'],
      'price': '€25',
      'category': 'Food',
    },
  ];
  List<Map<String, dynamic>> getFilteredCards() {
    if (selectedCategory == 'All') {
      return eventCardsData;
    }

    return eventCardsData.where((event) {
      return event['category'] == selectedCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: kIsWeb
            ? null
            : AppBar(
                title: Text(
                  'Tues, Nov 12',
                  style: titilliumExremeSmall.copyWith(color: ColorResources.grey),
                ),
                actions: [
                  Container(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/bell.png'),
                        SizedBox(
                          width: 8.0,
                        ),
                        Image.asset('assets/images/profile.png')
                      ],
                    ),
                  ),
                ],
              ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'This Week Estepona',
                style: kIsWeb ? titilliumBold : titilliumBold.copyWith(fontSize: 20),
              ),
            ),
            GoalCard(),
            SizedBox(
              height: 8,
            ),
            CustomSearchBar(),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryButton(
                    image: Image.asset('assets/images/edit.png'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Please select category, Thankyou!!'),
                        backgroundColor: ColorResources.black,
                      ));
                    },
                  ),
                  const SizedBox(width: kIsWeb ? 50 : 10),
                  CategoryButton(
                    text: 'All',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'All';
                      });
                    },
                  ),
                  const SizedBox(width: kIsWeb ? 50 : 10),
                  CategoryButton(
                    text: 'Sports',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Sports';
                      });
                    },
                  ),
                  const SizedBox(width: kIsWeb ? 50 : 10),
                  CategoryButton(
                    text: 'Food',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Food';
                      });
                    },
                  ),
                  const SizedBox(width: kIsWeb ? 50 : 10),
                  CategoryButton(
                    text: 'Kids',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Kids';
                      });
                    },
                  ),
                  const SizedBox(width: kIsWeb ? 50 : 10),
                  CategoryButton(
                    text: 'Creative',
                    onPressed: () {
                      setState(() {
                        selectedCategory = 'Creative';
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  'Today ',
                  style: titilliumExremeSmall.copyWith(fontSize: 16),
                ),
                Text(
                  '/ tuesday',
                  style: titilliumExremeSmall.copyWith(fontSize: 16, color: ColorResources.grey),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: getFilteredCards().length,
                itemBuilder: (context, index) {
                  var event = getFilteredCards()[index];
                  return EventCard(
                    checkInTime: event['checkInTime'],
                    lateTime: event['lateTime'],
                    title: event['title'],
                    location: event['location'],
                    spotsLeft: event['spotsLeft'],
                    priorities: event['priorities'],
                    price: event['price'],
                  );
                },
              ),
            ),
          ]),
        )));
  }
}
