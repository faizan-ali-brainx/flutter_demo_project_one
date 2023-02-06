import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_project_one/extentions/AppUtils.dart';

import '../models/Client.dart';
import 'package:http/http.dart' as http;

class ClientsProvider extends ChangeNotifier {

  final List<Client> _clientList = [
    Client("1", "Mr. one", "+92 3244273980"),
    Client("2", "Mr. two", "+92 3244273980"),
    Client("3", "Mr. three", "+92 3244273980"),
    Client("4", "Mr. four", "+92 3244273980"),
    Client("5", "Mr. five", "+92 3244273980"),
    Client("6", "Mr. six", "+92 3244273980"),
    Client("7", "Mr. seven", "+92 3244273980"),
    Client("8", "Mr. eight", "+92 3244273980"),
    Client("9", "Mr. nine", "+92 3244273980"),
    Client("10", "Mr. ten", "+92 3244273980"),
    Client("11", "Mr. eleven", "+92 3244273980"),
    Client("12", "Mr. twelve", "+92 3244273980"),
    Client("13", "Mr. thirteen", "+92 3244273980"),
    Client("14", "Mr. fourteen", "+92 3244273980"),
  ];

  List<Client> get getClients {
    return [..._clientList];
  }

  Future<void> getClientsFromServer() async {
    final url = Uri.parse(AppUtils.BASE_URL + AppUtils.GET_CLIENTS);
    try {
      final headers = { "access-token": "u-OfpuunUjlgch5kqJEo7g", "client": "1h5KNPlyOsiusOpMFHdf1w", "uid": "testercd@mailinator.com"};
      final response = await http.get(url, headers: headers);
      // debugPrint('Response status: ${response.statusCode}');
      // debugPrint('Response body: ${response.body}');
      var body = jsonDecode(response.body) as Map<String, dynamic>;
      body.forEach((key, value) {
        debugPrint(key + " " + value);
      });
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }

}