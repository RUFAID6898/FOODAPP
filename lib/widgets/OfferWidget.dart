import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferWidget extends StatelessWidget {
  String image;
  String offer;

  OfferWidget({
    required this.image,
    required this.offer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            offer,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          const Text(
            'GET FLAT RS 100 OFF',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            'Code :WLCOME',
            style: TextStyle(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Oder Now',
                  style: TextStyle(color: Colors.red),
                )),
          )
        ],
      ),
    );
  }
}
