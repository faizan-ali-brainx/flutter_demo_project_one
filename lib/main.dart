
import 'package:flutter/material.dart';
import 'package:flutter_demo_project_one/ui/screens/ChatScreenWidget.dart';
import 'package:flutter_demo_project_one/ui/screens/ClientScreenWidget.dart';
import 'package:flutter_demo_project_one/ui/screens/LoginScreenWidget.dart';
import 'package:flutter_demo_project_one/ui/screens/SettingsScreenWidget.dart';
import 'package:flutter_demo_project_one/viewModels/ClientsViewModel.dart';
import 'package:flutter_demo_project_one/viewModels/UserViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ClientsViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blueAccent,
        ),
        title: _title,
        home: isUserLogin() ? const HomeScreenWidget() : LoginScreenWidgetState(),
      ),
    );
  }

  bool isUserLogin() {
    return false;
  }

}

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    ClientScreenWidgetState(),
    ChatScreenWidgetState(),
    SettingsScreenWidgetState(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("In main build method");
    return Scaffold(
      appBar: null,
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Client',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
