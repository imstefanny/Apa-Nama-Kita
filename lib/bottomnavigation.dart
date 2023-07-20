import 'package:ac_88/home/home.dart';
import 'package:ac_88/profile/profile.dart';
import 'package:ac_88/transaction/transaction.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedNavBar = 0;
  final GlobalKey<NavigatorState> _homeNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _transactionNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _profileNavigatorKey =
      GlobalKey<NavigatorState>();

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

  GlobalKey<NavigatorState> _getCurrentNavigatorKey() {
    switch (_selectedNavBar) {
      case 0:
        return _homeNavigatorKey;
      case 1:
        return _transactionNavigatorKey;
      case 2:
        return _profileNavigatorKey;
      default:
        return _homeNavigatorKey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          final NavigatorState navigator =
              _getCurrentNavigatorKey().currentState!;
          if (navigator.canPop()) {
            navigator.pop();
            return false; // Prevent default back button behavior
          }
          return true; // Proceed with default back button behavior
        },
        child: Stack(
          children: [
            Offstage(
              offstage: _selectedNavBar != 0,
              child: Navigator(
                key: _homeNavigatorKey,
                onGenerateRoute: (RouteSettings settings) {
                  return MaterialPageRoute(
                    settings: settings,
                    builder: (BuildContext context) => Home(),
                  );
                },
              ),
            ),
            Offstage(
              offstage: _selectedNavBar != 1,
              child: Navigator(
                key: _transactionNavigatorKey,
                onGenerateRoute: (RouteSettings settings) {
                  return MaterialPageRoute(
                    settings: settings,
                    builder: (BuildContext context) => Transaction(),
                  );
                },
              ),
            ),
            Offstage(
              offstage: _selectedNavBar != 2,
              child: Navigator(
                key: _profileNavigatorKey,
                onGenerateRoute: (RouteSettings settings) {
                  return MaterialPageRoute(
                    settings: settings,
                    builder: (BuildContext context) => Profile(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
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
