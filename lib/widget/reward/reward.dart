import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shake_and_eat/model/user.dart';
import 'package:shake_and_eat/widget/reward/inventory_tab.dart';
import 'package:shake_and_eat/widget/reward/shop_tab.dart';

class Reward extends StatefulWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> rewardTabs = <Tab>[
      const Tab(text: 'SHOP'),
      const Tab(text: 'INVENTORY'),
    ];
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);

    return DefaultTabController(
      // initialIndex: 1,
      length: rewardTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
          bottom: TabBar(
            tabs: rewardTabs,
          ),
        ),
        body: const TabBarView(
          children: [
            ShopTab(),
            InventoryTab(),
          ],
        ),
      ),
    );
  }
}
