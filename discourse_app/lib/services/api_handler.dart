import 'dart:convert';

import 'package:http/http.dart' as http;

String url = 'http://10.0.2.2:8000/api/';

class ApiHandler {
  Future<bool> login(String username, String password) async {
    http.Response response = await http.post(
      Uri.parse('${url}accounts/login/'),
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  Future<bool> register(Map<String, String> registerDetails) async {
    http.Response response = await http.post(
      Uri.parse('${url}accounts/register/'),
      body: registerDetails,
    );

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  Future<List> queryList() async {
    http.Response response = await http.get(
      Uri.parse('${url}querylist/'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return [];
  }

  Future<Map> answerDetail(int pk) async {
    http.Response response = await http.get(
      Uri.parse('${url}answerdetail/$pk/'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return {};
  }

  Future<List> answerList() async {
    http.Response response = await http.get(
      Uri.parse('${url}answerlist/'),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return [];
  }
}
