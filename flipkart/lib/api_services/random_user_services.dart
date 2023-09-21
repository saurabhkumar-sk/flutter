import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/random_services.dart';
import 'package:my_first_app/models/random_models.dart';

class RandomUserServices extends RandomServices {
  Future<RandomUser?> getRandomUserApis() async {
    try {
      final response = await getHttp('');

      // log(response.statusCode.toString(), name: 'Status');
      // log(response.body, name: 'getRandomUserApis');

      final userMap = json.decode(response.body);

      if (response.statusCode != 200) return null;
      RandomUser user = RandomUser.fromJson(userMap['results'][0]);

      log(userMap.toString(), name: 'getRandomUserApi response');

      return user;
    } catch (e, s) {
      log(e.toString(), name: 'error getRandomUserApis', stackTrace: s);
      return null;
    }
  }
}
