import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/random_services.dart';
import 'package:my_first_app/models/random_models.dart';

class RandomUserServices extends RandomServices {
  Future<List<RandomUser>?> getUserApis() async {
    try {
      final response = await getHttp('');

      log(response.statusCode.toString(), name: 'Status');
      log(response.body, name: 'body');

      final userMapList = json.decode(response.body);

      if (response.statusCode != 200) return null;
      List<RandomUser> userList =
          List.from(userMapList.map((e) => RandomUser.fromJson(e)));

      log(userMapList.toString(), name: 'getUserApi response');

      return userList;
    } catch (e, s) {
      log(e.toString(), name: 'error getUserApis', stackTrace: s);
      return null;
    }
  }
}
