import 'package:flutter/material.dart';
import 'package:lol_app/feature/home/viewModel/home_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../core/model/champion_model.dart';

class ChampionCardWidget extends StatelessWidget {
  const ChampionCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: ((context, viewModel, child) {
      return Card(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.pink, borderRadius: BorderRadius.circular(22)),
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/lol.jpeg'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    // Text(
                    //   "${viewModel.champion[0].name} " ?? "a",
                    //   style: TextStyle(fontSize: 22),
                    // ),
                    Expanded(
                      child: Container(),
                    ),
                    const Icon(Icons.more_horiz)
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: PageView.builder(
                    itemCount: 1,
                    itemBuilder: ((context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.asset('assets/images/lolText.png'),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }));
  }
}
