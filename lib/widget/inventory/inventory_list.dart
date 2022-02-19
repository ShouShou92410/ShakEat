import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/reward.dart';

import 'package:shake_and_eat/widget/inventory/inventory_reward.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({Key? key, required this.inventory}) : super(key: key);

  final List<Reward> inventory;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: inventory.length,
      itemBuilder: (BuildContext context, int index) =>
          InventoryReward(reward: inventory[index]),
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 0,
      ),
    );
  }
}
