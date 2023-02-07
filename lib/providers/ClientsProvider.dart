import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/models/ClientModel.dart';

import 'package:http/http.dart' as http;

class ClientsProvider extends ChangeNotifier {

  List<ClientModel> _clientList = <ClientModel>[];

  List<ClientModel> get getClientList {
    return [..._clientList];
  }

  Future<List<ClientModel>> getClientsFromServer() async {
    final url = Uri.parse(AppUtils.BASE_URL + AppUtils.GET_CLIENTS);
    try {
      final headers = { "access-token": "u-OfpuunUjlgch5kqJEo7g", "client": "1h5KNPlyOsiusOpMFHdf1w", "uid": "testercd@mailinator.com"};
      final response = await http.get(url, headers: headers);
      debugPrint('Response body: ${response.body}');
      List clientList = jsonDecode(response.body) as List;
      var clients = clientList.map((i) => ClientModel.fromJson(i)).toList();
      return clients;
    } catch (error) {
      rethrow;
    }
  }

}