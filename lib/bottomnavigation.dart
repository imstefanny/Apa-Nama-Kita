import 'package:flutter/material.dart';
import 'package:ac_88/home/home.dart';
import 'package:ac_88/profile/profile.dart';
import 'package:ac_88/transaction/transaction.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedNavBar = 0;

  final List<Widget> _body = [const Home(), const Transaction(), const Profile()];

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
        type: BottomNavigationBarType.fixed,
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
