import 'package:flutter/material.dart';

import '../../../core/helper/text_helper.dart';
import '../../../core/model/champion_model.dart';
import 'widgets/custom_champion_card_widget.dart';
import 'widgets/top_champion_widget.dart';

class HomePageView extends StatelessWidget {
  final ModelClass champion;

  const HomePageView({Key key, this.champion}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(),
      body: Column(
        children: const [
          //champions circle avatar
          TopChampionsWidget(),
          //champions card
          ChampionCardWidget()
        ],
      ),
    );
  }

  AppBar _customAppBar() {
    return AppBar(
      title: const Text(
        StringConstant.homeApparTitle,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.light),
        ),
      ],
    );
  }
}
