import 'package:flutter/material.dart';

import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/providers/ClientsProvider.dart';
import 'package:flutter_demo_project_one/widgets/other/AppBarWidget.dart';
import 'package:flutter_demo_project_one/widgets/listItems/ClientItemWidget.dart';
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

  // @override
  // void initState() {
  //   Future.delayed(Duration.zero).then((_) {
  //     Provider.of<ClientsProvider>(context, listen: false).getClientsFromServer();
  //   });
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<ClientsProvider>(context).getClientsFromServer().then((_) => {
            setState(() {
              _isLoading = false;
            })
          });
      _isInit = false;
    }
    super.didChangeDependencies();
  }

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
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Searching clients")));
              ;
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
