import 'package:flutter/material.dart';

import '../../../core/model/champion_model.dart';
import '../../../core/service/champions_sevice.dart';

class HomeViewModel extends ChangeNotifier {
  final LolService _lolService = LolService();

  List<Champion> champion = [];

  var _loading = false;
  bool get loading => _loading;

  getChampionData() async {
    _loading = true;
    notifyListeners();
    champion = await _lolService.fetchChampions();
    notifyListeners();

    _loading = false;
    notifyListeners();
  }
}
