import 'package:flutter/material.dart';

class Shake extends StatefulWidget {
  const Shake({Key? key}) : super(key: key);

  @override
  State<Shake> createState() => _ShakeState();
}

class _ShakeState extends State<Shake> {
  @override
  Widget build(BuildContext context) {
    return const Text("Shake page");
  }
}
