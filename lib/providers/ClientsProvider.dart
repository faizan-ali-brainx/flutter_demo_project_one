import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/models/ClientModel.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ClientsProvider extends ChangeNotifier {

  List<ClientModel> _clientList = <ClientModel>[];

  List<ClientModel> get getClientList {
    return [..._clientList];
  }

  Future<List<ClientModel>> getClientsFromServer() async {
    final url = Uri.parse(AppUtils.BASE_URL + AppUtils.GET_CLIENTS);
    try {
      final prefs = await SharedPreferences.getInstance();
      final headers = { "access-token": prefs.getString('access-token') ?? "", "client": prefs.getString('client') ?? "", "uid": prefs.getString('uid') ?? ""};
      //final headers = { "access-token": "8EIA90V9ALq161MF32JQAA", "client": "43ML1oHitkBjyZCsQ4DtEA", "uid": "testercd@mailinator.com"};
      debugPrint("----------- Access token ---------- ${prefs.getString('access-token')}");
      final response = await http.get(url, headers: headers);
      List clientList = jsonDecode(response.body) as List;
      var clients = clientList.map((i) => ClientModel.fromJson(i)).toList();
      debugPrint("In main build method");
      return clients;
    } catch (error) {
      rethrow;
    }
  }

}