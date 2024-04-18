import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RecommendedWidget extends StatelessWidget {
  String image;
  String offer;
  RecommendedWidget({
    required this.image,
    required this.offer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                Text(
                  offer,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Rs 300',
                ),
                const Text('top fodd is best')
              ],
            ),
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('ADD')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
