
import 'package:flutter/material.dart';

import '../models/Client.dart';

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

}