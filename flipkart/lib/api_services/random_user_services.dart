import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/base_services.dart';
import 'package:my_first_app/api_services/random_services.dart';
import 'package:my_first_app/models/api_users.dart';
import 'package:my_first_app/models/random_models.dart';
import 'package:my_first_app/utils/random_apis.dart';


//json
class UserService extends BaseService {
  Future<List<ApiUser>?> getUsersApi() async {
    try {
      final response = await getHttp(RandomUrls.user);
      log(response.body, name: 'getUsersApi');
      final userMapList = json.decode(response.body);

      if (response.statusCode != 200) return null;
      List<ApiUser> userList =
          List<ApiUser>.from(userMapList.map((e) => ApiUser.fromJson(e)));

      log(userMapList.toString(), name: 'getUserApi response');
      // final userList = userMapList.map((e) => ApiUser.fromJson(e)).toList();
      return userList;
    } catch (e, s) {
      log(e.toString(), name: 'error getUserApi', stackTrace: s);
      return null;
    }
  }
}

// random api
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
