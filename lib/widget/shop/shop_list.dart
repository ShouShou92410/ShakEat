import 'package:flutter/material.dart';
import 'package:ShakEat/model/Partner.dart';

import 'package:ShakEat/widget/shop/shop_reward.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key, required this.partner}) : super(key: key);

  final Partner partner;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partner.offers.length,
      itemBuilder: (BuildContext context, int index) =>
          ShopReward(partner: partner, reward: partner.offers[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 10),
    );
  }
}
