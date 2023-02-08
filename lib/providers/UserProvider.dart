import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/models/ClientModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {

  Future<bool> loginUser(String email, String password) async {
    final url = Uri.parse(AppUtils.BASE_URL + AppUtils.LOGIN);
    try {
      debugPrint("Email and Password $email : $password");
      final response = await http.post(url, body: jsonEncode(<String, String> {
        "email": email,
        "password": password
      }));
      saveDataInPrefs(headers: response.headers);
      debugPrint("Login Response ${response.statusCode}");
      return Future.value(response.statusCode == 200);
    } catch (error) {
      debugPrint("Error in Login response");
      return Future.value(false);
    }
  }

  Future<void> saveDataInPrefs({required Map<String, String> headers}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('access-token', headers["access-token"].toString());
    await prefs.setString('client', headers["client"].toString());
    await prefs.setString('uid', headers["uid"].toString());
    await prefs.setBool('isUserLogin', true);
  }

}