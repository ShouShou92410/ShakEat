import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shake_and_eat/model/User.dart';
import 'package:shake_and_eat/widget/inventory/inventory_list.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Consumer<User>(builder: (BuildContext context, user, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Shake and Eat"),
          centerTitle: true,
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                "Points: ${user.points}",
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 10),
              child: Text(
                '${user.inventory.length} Rewards in your inventory',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              child: InventoryList(inventory: user.inventory),
            ),
          ],
        ),
      );
    });
  }
}
