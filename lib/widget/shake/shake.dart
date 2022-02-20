import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shake_and_eat/model/User.dart';

class Shake extends StatefulWidget {
  const Shake({Key? key}) : super(key: key);

  @override
  State<Shake> createState() => _ShakeState();
}

class _ShakeState extends State<Shake> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Provider.of<User>(context, listen: false).AddPoints(10),
    );
  }
}
