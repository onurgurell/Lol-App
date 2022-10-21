import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../model/champion_model.dart';

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

  Future<List<Champion>> fetchChampions(String name, String role) async {
    var header = {
      'X-RapidAPI-Key': 'd604f8e378msh55775ef3170aa66p15b8f4jsnbc316a360597',
      'X-RapidAPI-Host': 'league-of-legends-champions.p.rapidapi.com'
    };
    var response = await http.get(
        Uri.parse(
          'https://league-of-legends-champions.p.rapidapi.com/champions/en-us?page=0&size=100&name=$name&role=$role',
        ),
        headers: header);

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
