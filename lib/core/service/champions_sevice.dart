import 'dart:convert' as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/champion_model.dart';
import '../utils/constants/constants.dart';

class LolService {
  // Future<List<Champion>> fetchChampions() async {
  //   try {
  //     var response = await http.get(
  //       Uri.parse(Constants.BaseUrl),
  //     );
  //     if (response.statusCode == 200) {
  //       final item = json.decode(response.body);
  //       Map<String, dynamic> data = item['data'];

  //       List<Champion> result = [];
  //       data.forEach((key, value) {
  //         result.add(Champion.fromJson(value));
  //       });

  //       return result;
  //     } else {
  //       print('data not found');
  //     }
  //   } catch (e) {
  //     log(e);
  //   }

  Future<List<Champion>> fetchChampions() async {
    var response = await http.get(
      Uri.parse(
        'http://ddragon.leagueoflegends.com/cdn/10.5.1/data/en_US/champion.json',
      ),
    );
    var jsonResponse = convert.jsonDecode(response.body);

    Map<String, dynamic> data = jsonResponse['data'];

    List<Champion> result = [];

    data.forEach((champion, data) {
      result.add(Champion.fromJson(data));
    });

    return result;
  }
  // Future<List<Champion>> fetchChampions() async {
  //   var response = await http.post(Uri.parse(Constants.BaseUrl));

  //   if (response.statusCode == 200) {
  //     final json = jsonDecode(response.body) as List;

  //     final champ = json.map((e) {
  //       return Champion(
  //         id: e['id'],
  //         name: e['name'],
  //         title: e['title'],
  //         image: e['image'],
  //       );
  //     }).toList();
  //     return champ;
  //   } else {
  //     print('Data is not found');
  //   }

  //   return [];
  // }
}
