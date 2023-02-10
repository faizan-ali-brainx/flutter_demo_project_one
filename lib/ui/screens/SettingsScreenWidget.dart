
import 'package:flutter/material.dart';
import 'package:flutter_demo_project_one/extentions/AppUtils.dart';

class SettingsScreenWidgetState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsScreenWidget();
  }
}

class SettingsScreenWidget extends State<SettingsScreenWidgetState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/profile_image.jpeg",
                      height: 70,
                      width: 70,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Emma Watson',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "emmawatson@mailinator.com",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "+9255555532552",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      color: AppUtils.backgroundGrey,
                      width: 40,
                      height: 40,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: const Text("DEPARTMENTS")),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1.0, color: Colors.black38),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0))),
                        child: const Text("Design")),
                    Container(
                        padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                        margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1.0, color: Colors.black38),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0))),
                        child: const Text("Development")),
                    Container(
                        padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                        margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1.0, color: Colors.black38),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0))),
                        child: const Text("Android"))
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    color: AppUtils.backgroundGrey,
                    child: const Text("SETTINGS"),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
                ListTile(
                  leading: ClipOval(
                    child: Container(
                      color: Colors.blueAccent,
                      width: 32,
                      height: 32,
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  title: const Text("Notification"),
                  trailing: const IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: null,
                  ),
                ),
                const Divider(
                  height: 1,
                  color: Colors.black38,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
