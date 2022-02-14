import 'package:flutter/material.dart';

import 'package:shake_and_eat/model/reward.dart';

class ShopRewardDetail extends StatelessWidget {
  const ShopRewardDetail({Key? key, required this.reward}) : super(key: key);

  final Reward reward;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.white.withOpacity(0.5),
        // shadowColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: vh * 5,
        width: vw * 80,
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_shopping_cart),
              Text(
                "PURCHASE",
              )
            ],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: vh * 8),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Image(
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                image: NetworkImage(reward.imageUrl),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        reward.endDate == null
                            ? 'Offer starts on ${reward.getStartDate()}'
                            : 'Available from ${reward.getStartDate()} to ${reward.getEndDate()}',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Text(
                          reward.name,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Text(
                          '${reward.cost}pts',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    reward.partner.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    reward.partner.address,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: vh * 2),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit odio diam, vitae tincidunt tellus euismod vel. Donec ut scelerisque orci. Phasellus laoreet maximus odio, pellentesque commodo ligula pretium sed. Sed sed urna hendrerit, congue nulla ornare, malesuada nunc. Etiam convallis sodales lacinia. Pellentesque scelerisque, metus et lacinia tristique, augue augue auctor sem, id tincidunt ipsum risus sit amet enim. Sed leo justo, sollicitudin non turpis congue, sagittis ultricies orci. Aliquam consequat feugiat tortor, non consectetur nulla hendrerit in. Nulla pellentesque pellentesque dolor ut varius. Mauris mattis placerat ipsum, dignissim vestibulum ligula. Sed quis porttitor augue. Nunc et venenatis tortor. Fusce id est justo. Nunc et enim ut nunc mattis dignissim sit amet ut leo. Donec lobortis mattis massa ac ultrices.",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
