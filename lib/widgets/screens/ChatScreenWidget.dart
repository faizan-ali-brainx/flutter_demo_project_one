
import 'package:flutter/material.dart';

import 'package:flutter_demo_project_one/extentions/AppUtils.dart';
import 'package:flutter_demo_project_one/widgets/screens/ThreadListingScreenWidget.dart';

class ChatScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: const TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: "Client",),
                Tab(text: "Organization",),
              ],
            ),
            title: const Text('Chats', style: TextStyle(color: Colors.black),),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black,),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Searching now')));
                },
              ),
            ],
          ),
          body: Container(
            color: AppUtils.backgroundGrey,
            child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: TabBarView(
                children: [
                  ThreadListingScreenWidget(),
                  const Center(child: Text("This is organization screen")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
