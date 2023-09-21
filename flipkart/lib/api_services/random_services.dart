import 'dart:developer';

import 'package:my_first_app/utils/random_apis.dart';
import 'package:http/http.dart' as http;

class RandomServices {
  Future<http.Response> getHttp(String api) async {
    final url = RandomUrls.baseurls + api;
    log(url, name: 'getHttp');

    final response = await http.get(
      Uri.parse(url),
      headers: {'content-Type': 'application/json'},
    );

    // log(response.statusCode.toString(), name: 'Status');
    // log(response.body, name: 'body');

    return response;
  }
}
