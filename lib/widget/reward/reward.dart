import 'package:flutter/material.dart';
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

    return DefaultTabController(
      // initialIndex: 1,
      length: rewardTabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.blue,
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
