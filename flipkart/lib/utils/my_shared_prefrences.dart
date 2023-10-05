
import 'package:shared_preferences/shared_preferences.dart';

class MyShared {
  MyShared._init();
  static final instance = MyShared._init();

  void setString(String key, String value) async {
    final preferance = await SharedPreferences.getInstance();
    preferance.setString(key, value);
  }
    void setBool(String key, bool value) async {
      final preferance = await SharedPreferences.getInstance();
      preferance.setBool(key, value);
    }
    
    
    Future<bool?> getBool(String key) async {
      final preferance = await SharedPreferences.getInstance();
     return preferance.getBool(key);
    }
  }

