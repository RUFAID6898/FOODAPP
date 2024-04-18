import 'package:flutter/material.dart';

class RatingWidets extends StatelessWidget {
  const RatingWidets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 370,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.wifi_channel_sharp,
                        color: Colors.yellow,
                      ),
                      Text('Best in burger'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              '4.3',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Text(
                'Weatind burgers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text('40-45 minits '),
              const Text('Burger ',
                  style: TextStyle(
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
