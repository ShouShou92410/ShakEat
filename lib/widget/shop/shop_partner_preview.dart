import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/Partner.dart';
import 'package:shake_and_eat/model/Reward.dart';

class ShopPartnerPreview extends StatelessWidget {
  const ShopPartnerPreview({Key? key, required this.partner}) : super(key: key);

  final Partner partner;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
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
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {},
                child: Text(
                  'View all',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: vh * 2),
          Container(
            height: vh * 25,
            child: ListView.separated(
              shrinkWrap: true,
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
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Container(
      width: vw * 35,
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
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
