// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:demo_ecommerce/account.dart';
import 'package:demo_ecommerce/add.dart';
import 'package:demo_ecommerce/chat.dart';
import 'package:demo_ecommerce/home.dart';
import 'package:demo_ecommerce/my_ads.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavControl(),
    );
  }
}

class BottomNavControl extends StatefulWidget {
  const BottomNavControl({Key? key}) : super(key: key);

  @override
  State<BottomNavControl> createState() => _BottomNavContrlState();
}

class _BottomNavContrlState extends State<BottomNavControl> {
  int _currentIndex = 0;
  final _pages = [Home(), MyAds(), Add(), Chat(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop_outlined),
            label: "My Ads",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
        selectedItemColor: Color(0xFF5364F4),
        unselectedItemColor: Color(0xFFC4C4C4),
      ),
      body: _pages[_currentIndex],
    );
  }
}
