import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/reward.dart';

import 'package:shake_and_eat/widget/shop/shop_reward.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key, required this.rewards}) : super(key: key);

  final List<Reward> rewards;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: rewards.length,
      itemBuilder: (BuildContext context, int index) =>
          ShopReward(reward: rewards[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 10),
    );
  }
}
