import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/reward.dart';

import 'package:shake_and_eat/widget/shop/shop_reward_detail.dart';

class ShopReward extends StatelessWidget {
  const ShopReward({Key? key, required this.reward}) : super(key: key);

  final Reward reward;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;

    return Container(
      height: vh * 20,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 5,
        child: Stack(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(reward.imageUrl),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(5, 10, 10, 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              reward.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              reward.partner.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Text(
                              reward.partner.address,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${reward.cost}pts',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              reward.endDate == null
                                  ? 'Offer starts on ${reward.getStartDate()}'
                                  : 'Available from ${reward.getStartDate()} to ${reward.getEndDate()}',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShopRewardDetail()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
