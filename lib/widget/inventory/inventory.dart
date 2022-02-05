import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shake_and_eat/model/user.dart';
import 'package:shake_and_eat/widget/inventory/inventory_list.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Shake and Eat"),
          centerTitle: true,
          actions: <Widget>[
            Consumer<User>(
              builder: (BuildContext context, user, Widget? child) {
                return TextButton(
                  onPressed: () {},
                  child: Text(
                    "Points: ${user.points}",
                  ),
                );
              },
            )
          ],
        ),
        body: InventoryList());
  }
}
