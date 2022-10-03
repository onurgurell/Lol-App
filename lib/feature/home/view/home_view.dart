import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lol_app/feature/auth/view_model/auth_view_model.dart';
import 'package:lol_app/feature/home/viewModel/home_view_model.dart';
import 'package:provider/provider.dart';

import '../../../core/helper/text_helper.dart';
import '../../../core/model/champion_model.dart';

class HomePageView extends StatelessWidget {
  final Champion champion;

  const HomePageView({Key key, this.champion}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(builder: ((context, value, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            StringConstant.homeApparTitle,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.light),
            ),
          ],
        ),
        body: Column(
          children: [
            //champions circle avatar
            Container(
              color: Colors.red,
              height: 50,
              width: double.infinity,
              child: Row(),
            ),
            //champions card
            Card(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(22)),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/lol.jpeg'),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Aetrox',
                            style: TextStyle(fontSize: 22),
                          ),
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
            )
          ],
        ),
      );
    }));
  }
}
