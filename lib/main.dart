import 'package:chat_app_flutter/components/custom_text.dart';
import 'package:chat_app_flutter/create_contact/create_contact.dart';
import 'package:chat_app_flutter/main_pages/call_page/call_page.dart';
import 'package:chat_app_flutter/main_pages/chat_page/chat_page.dart';
import 'package:chat_app_flutter/main_pages/profile_page/profile_page.dart';
import 'package:chat_app_flutter/main_pages/settings_page/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ChatPage(),
    CallPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  Widget? page;

//Bottomnavbar item Ontap Function
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      page = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        elevation: 4,
        title: const CustomText(text: "Best Chat"),
      ),

      //Drower
      drawer: const Drawer(),

      //Floating Action Button for add contact
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            page = const CreateContact();
          });
        },
        child: const Icon(Icons.add),
      ),

      //body
      body: (page == null) ? _widgetOptions.elementAt(_selectedIndex) : page,

      //Bottom Navbar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.forum,
              size: 30,
            ),
            label: 'Chat',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
              size: 30,
            ),
            label: 'Call',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: 'Setting',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
