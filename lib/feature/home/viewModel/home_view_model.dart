import 'package:flutter/material.dart';

import '../../../core/model/champion_model.dart';
import '../../../core/service/champions_sevice.dart';

class HomeViewModel extends ChangeNotifier {
  final LolService _lolService = LolService();

  ModelClass modelClass;

  var _loading = false;
  bool get loading => _loading;

  getChampionData() async {
    _loading = true;
    notifyListeners();
    modelClass = await _lolService.fetchChampions();

    print(modelClass.toString());

    _loading = false;
    notifyListeners();
  }
}
