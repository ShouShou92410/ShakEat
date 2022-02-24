import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ShakEat/model/Partner.dart';
import 'package:ShakEat/model/Reward.dart';
import 'package:ShakEat/widget/shop/shop_list.dart';
import 'package:ShakEat/widget/shop/shop_reward_detail.dart';

class ShopPartnerPreview extends StatelessWidget {
  const ShopPartnerPreview({Key? key, required this.partner}) : super(key: key);

  final Partner partner;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  partner.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ShopList(partner: partner)),
                  );
                },
                child: Text(
                  'View all',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: vh * 2),
          Container(
            height: vh * 20,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: min(5, partner.offers.length),
              itemBuilder: (BuildContext context, int index) => RewardPreview(
                  partner: partner, reward: partner.offers[index]),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class RewardPreview extends StatelessWidget {
  const RewardPreview({Key? key, required this.partner, required this.reward})
      : super(key: key);

  final Partner partner;
  final Reward reward;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Stack(
      children: [
        Container(
          width: vw * 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(reward.imageUrl),
                  ),
                ),
              ),
              SizedBox(height: vh * 1),
              Text(
                reward.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShopRewardDetail(
                            partner: partner,
                            reward: reward,
                          )),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
