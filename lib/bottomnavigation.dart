import 'package:bottom_nav_test/pages/allcalls.dart';
import 'package:bottom_nav_test/pages/missedcall.dart';
import 'package:bottom_nav_test/pages/received.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigation createState() => new _BottomNavigation();
}

// SingleTickerProviderStateMixin is used for animation

class _BottomNavigation extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    new DialledCallsPage(),
    new MissedCallsPage(),
    new ReceivedCallsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _children[_currentIndex],

        // Set the bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.call_made),
                  title: new Text('Dialed Calls')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.call_missed),
                  title: new Text('Missed')),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.call_received),
                  title: new Text('Received')),
            ]));
  }
}

class Contact {
  final String fullName;
  final String phone;

  const Contact({this.fullName, this.phone});
}
