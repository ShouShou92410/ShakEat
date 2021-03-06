import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ShakEat/model/User.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Provider.of<User>(context, listen: false).AddPoints(10),
    );
  }
}
