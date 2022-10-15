import 'dart:ui';

import 'package:flutter/material.dart';

class CircleChampionsProfile extends StatelessWidget {
  final double width;
  final double height;

  final String image;
  const CircleChampionsProfile({Key key, this.image, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}
