import 'package:flutter/material.dart';
import 'package:ShakEat/model/UserReward.dart';

import 'package:ShakEat/widget/inventory/inventory_reward.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({Key? key, required this.inventory}) : super(key: key);

  final List<UserReward> inventory;

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
