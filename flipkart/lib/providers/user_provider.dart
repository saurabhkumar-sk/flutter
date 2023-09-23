import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/random_user_services.dart';
import 'package:my_first_app/models/api_users.dart';

class UserProvider extends ChangeNotifier {
  final service = UserService();
  List<ApiUser> apiUserList = [];

  Future<void> getApiUser() async {
    final response = await service.getUsersApi();

    if (response != null) {
      apiUserList = response;
    }
    notifyListeners();

  }
}
