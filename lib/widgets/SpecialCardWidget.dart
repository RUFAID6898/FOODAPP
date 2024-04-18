import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecialCardWidget extends StatelessWidget {
  String image;
  String offer;

  SpecialCardWidget({
    required this.image,
    required this.offer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(17)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              offer,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 98, 96, 96)),
            ),
          ),
          SizedBox(width: 50, child: Image(image: NetworkImage(image)))
        ],
      ),
    );
  }
}
