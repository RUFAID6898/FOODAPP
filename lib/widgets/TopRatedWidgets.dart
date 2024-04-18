import 'package:flutter/material.dart';
import 'package:food_booking_app/screen/Second_screen.dart';

class FoodWidgets extends StatelessWidget {
  const FoodWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ));
            },
            child: Container(
              height: 150,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://th.bing.com/th?id=OIP.ur3rFKWe-tQHnEOvzQbTkgHaE8&w=306&h=204&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2',
                      ),
                      fit: BoxFit.cover)),
              child: const Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'GET FLAT \n RS 100 OFF',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
          ),
          const Text(
            "Westind burgers",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Row(
            children: [
              CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.star,
                    size: 15,
                  )),
              SizedBox(
                width: 10,
              ),
              Text('4.3 .45')
            ],
          )
        ],
      ),
    );
  }
}
