import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shake_and_eat/model/user.dart';
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
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shake and Eat"),
        centerTitle: true,
        actions: <Widget>[
          Consumer<User>(
            builder: (BuildContext context, user, Widget? child) {
              return TextButton(
                style: style,
                onPressed: () {},
                child: Text(
                  "Points: ${user.points}",
                ),
              );
            },
          )
        ],
      ),
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
