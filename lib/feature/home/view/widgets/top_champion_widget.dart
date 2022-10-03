import 'package:flutter/material.dart';

import '../../../../core/model/champion_model.dart';
import 'circle_champion_widget.dart';

class TopChampionsWidget extends StatelessWidget {
  final List<Champion> champion;
  const TopChampionsWidget({
    Key key,
    this.champion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return const CircleChampionsProfile(
              image: AssetImage('assets/images/lol.jpeg'),
              width: 75,
              height: 50,
            );
          })),
    );
  }
}
