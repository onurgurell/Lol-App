import 'package:flutter/material.dart';
import 'package:lol_app/feature/home/viewModel/home_view_model.dart';
import 'package:provider/provider.dart';

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
    return Consumer<HomeViewModel>(
      builder: ((context, viewModel, child) {
        return Container(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            itemCount: viewModel.champion.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return CircleChampionsProfile(
                image: '${viewModel.champion[index].image}',
                width: 75,
                height: 50,
              );
            }),
          ),
        );
      }),
    );
  }
}
