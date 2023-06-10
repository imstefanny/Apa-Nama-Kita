import 'package:ac_88/home/home.dart';
import 'package:ac_88/profile/profile.dart';
import 'package:ac_88/profile/profile1.dart';
import 'package:ac_88/transaction/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedNavBar = 0;

  final List<Widget> _body = [
    const Home(),
    const Transaction(),
    const Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedNavBar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_selectedNavBar],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavBar,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt), label: 'Transaction'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
