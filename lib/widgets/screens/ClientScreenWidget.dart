import 'package:flutter/material.dart';

import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/providers/ClientsProvider.dart';
import 'package:flutter_demo_project_one/widgets/listItems/ClientItemWidget.dart';
import 'package:flutter_demo_project_one/models/ClientModel.dart';
import 'package:provider/provider.dart';

class ClientScreenWidgetState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ClientScreenWidget();
  }
}

class ClientScreenWidget extends State<ClientScreenWidgetState> {
  var _isInit = true;
  var _isLoading = false;
  List<ClientModel> clientList = [];

  // @override
  // void initState() {
  //   Future.delayed(Duration.zero).then((_) {
  //     Provider.of<ClientsProvider>(context, listen: false).getClientsFromServer();
  //   });
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    debugPrint("In Client change dependency method");
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<ClientsProvider>(context).getClientsFromServer().then((clients) {
        setState(() {
          _isLoading = false;
          clientList = clients;
        });
      });
      _isInit = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // var clients = ClientsProvider().getClients;
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
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Searching clients")));
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: AppUtils.backgroundGrey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                  itemCount: clientList.length,
                  itemBuilder: (context, index) {
                    return ClientItemWidget(
                          clientList[index].name.toString(), clientList[index].clientPhones?.isEmpty == true ? "000000000000" : clientList[index].clientPhones!.first.number.toString());
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
