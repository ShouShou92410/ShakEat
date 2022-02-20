import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/Partner.dart';
import 'package:shake_and_eat/model/Reward.dart';

class ShopPartnerPreview extends StatelessWidget {
  const ShopPartnerPreview({Key? key, required this.partner}) : super(key: key);

  final Partner partner;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(partner.name),
              Text('View all'),
            ],
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: min(3, partner.offers.length),
              itemBuilder: (BuildContext context, int index) =>
                  RewardPreview(reward: partner.offers[index]),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 10),
            ),
          ),
        ],
      ),
    );
  }
}

class RewardPreview extends StatelessWidget {
  const RewardPreview({Key? key, required this.reward}) : super(key: key);

  final Reward reward;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            height: 150,
            width: 150,
            fit: BoxFit.cover,
            image: NetworkImage(reward.imageUrl),
          ),
        ),
        Text(reward.name),
      ],
    );
  }
}
