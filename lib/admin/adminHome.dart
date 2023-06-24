import 'package:ac_88/admin/adminEngineerConfirmation.dart';
import 'package:ac_88/admin/adminPaymentConfirmation.dart';
import 'package:ac_88/admin/logoutConfirm.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int _selectedIndex = 0;

  final List _body = [
    const AdminPaymentConfirmation(),
    const AdminEngineerConfirmation()
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      showAlertDialog(context);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.payments_outlined),
              label: 'Payment Confirmation'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind_rounded),
              label: 'Engineer Id Card'),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout, color: Color.fromRGBO(255, 0, 15, 1)),
              label: 'Logout'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
