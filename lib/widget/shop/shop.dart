import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shake_and_eat/model/user.dart';
import 'package:shake_and_eat/widget/shop/shop_tab.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
      body: ShopTab(),
    );
  }
}
