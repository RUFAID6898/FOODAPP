import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_booking_app/widgets/OfferWidget.dart';
import 'package:food_booking_app/widgets/SpecialCardWidget.dart';
import 'package:food_booking_app/widgets/TopRatedWidgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const Column(
          children: [
            Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  'Wales',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
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
          CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: [
                OfferWidget(
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                  offer: 'GET FLAT RS 100 OFF',
                ),
                OfferWidget(
                  image:
                      'https://th.bing.com/th/id/OIP.ihcILXxpcD-eg1h6d1YXCQHaEo?w=279&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                  offer: 'GET FLAT RS 100 OFF',
                ),
                OfferWidget(
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                  offer: 'GET FLAT RS 100 OFF',
                ),
              ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SpecialCardWidget(
                  offer: "MEALS \n FROM Rs!100",
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                ),
                SpecialCardWidget(
                  offer: "MEALS \n FROM Rs!100",
                  image:
                      'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('TOP RATE NEAR YOU'),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodWidgets(),
                FoodWidgets(),
                FoodWidgets(),
                FoodWidgets(),
                FoodWidgets(),
              ],
            ),
          ),
          Container(
            height: 300,
            color: const Color.fromARGB(255, 220, 218, 218),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('TOP RATE NEAR YOU'),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodWidgets(),
                      FoodWidgets(),
                      FoodWidgets(),
                      FoodWidgets(),
                      FoodWidgets(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
