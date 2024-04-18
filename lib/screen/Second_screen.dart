import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_booking_app/widgets/RatingWidet.dart';
import 'package:food_booking_app/widgets/RecommendedWidget.dart';
import 'package:food_booking_app/widgets/TopPicksWidget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 222, 222),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.share),
                        )
                      ],
                    )
                  ],
                ),
                const RatingWidets()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 124, 123, 123))),
              child: const ListTile(
                leading: CircleAvatar(),
                title: Text(
                  '20 % burgers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text('GET FLAT RS 100 OFF'),
                trailing: Text('4/5'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(child: Text('MENU')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              prefix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Search for cacke'),
              ),
              suffix: const Row(
                children: [
                  Icon(Icons.search),
                  Divider(
                    thickness: 10,
                  ),
                  Icon(
                    Icons.mic_rounded,
                    color: Colors.orange,
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 230, 228, 228)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                ),
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Top PIcks',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TopPicksWidgets(
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                  offer: '20 % burgers',
                ),
                TopPicksWidgets(
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                  offer: '70 % burgers',
                ),
                TopPicksWidgets(
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                  offer: '40 % burgers',
                ),
                TopPicksWidgets(
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                  offer: '30 % burgers',
                )
              ],
            ),
          ),
          const Divider(
            thickness: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'RCOMMENDED (19)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          RecommendedWidget(
            offer: '20 % burgers',
            image:
                'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
          ),
          const Divider(
            thickness: 2,
          ),
          RecommendedWidget(
            offer: '20 % burgers',
            image:
                'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
          ),
          const Divider(
            thickness: 2,
          ),
          RecommendedWidget(
            offer: '20 % burgers',
            image:
                'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
          ),
          const Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
