import 'package:flutter/material.dart';
import 'shake/shake.dart';
import 'reward/reward.dart';
import 'misc/misc.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 1;

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _navigationOptions = <Widget>[
    Shake(),
    Reward(),
    Misc(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _navigationOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.vibration), label: "Shake"),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: "Rewards"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "More")
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
