import 'package:ac_88/home/home.dart';
import 'package:ac_88/profile/profile.dart';
import 'package:ac_88/transaction/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedNavBar = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

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
    return WillPopScope(
      onWillPop: () async {
        // Exit the app when the back button is pressed
        SystemNavigator.pop();
        return false; // Prevent further back navigation
      },
      child: Scaffold(
        body: buildNavigator(),
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
      ),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedNavBar],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _body.elementAt(_selectedNavBar));
      },
    );
  }
}
