
import 'package:flutter/material.dart';

import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/providers/ClientsProvider.dart';
import 'package:flutter_demo_project_one/widgets/other/AppBarWidget.dart';
import 'package:flutter_demo_project_one/widgets/listItems/ClientItemWidget.dart';

class ClientScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var clients = ClientsProvider().getClients;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Clients",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text("Searching clients")));
              ;
            },
          ),
        ],
      ),
      body: Container(
        color: AppUtils.backgroundGrey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
            itemCount: clients.length,
            itemBuilder: (context, index) {
              return ClientItemWidget(
                  clients[index].getName, clients[index].getPhoneNumber);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          ),
        ),
      ),
    );
  }
}
