import 'dart:convert';
import 'dart:developer';

import 'package:my_first_app/api_services/base_services.dart';
import 'package:my_first_app/models/api_users.dart';
import 'package:my_first_app/utils/api_urls.dart';

class UserService extends BaseService {
  Future<List<ApiUser>?> getUsersApi() async {
    try {
      final response = await getHttp(ApiUrls.user);
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
