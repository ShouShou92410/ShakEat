import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/Partner.dart';

import 'package:shake_and_eat/model/Reward.dart';

class ShopRewardDetail extends StatelessWidget {
  const ShopRewardDetail(
      {Key? key, required this.partner, required this.reward})
      : super(key: key);

  final Partner partner;
  final Reward reward;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Reward details'),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: vh * 5,
        width: vw * 90,
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_shopping_cart),
              SizedBox(width: vw * 2),
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
                height: vh * 40,
                fit: BoxFit.cover,
                image: NetworkImage(reward.imageUrl),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(vw * 3, vh * 2, vw * 3, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${partner.name}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '${partner.address}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${reward.cost}pts',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: vh * 2),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      reward.name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        reward.endDate == null
                            ? 'Offer starts on ${reward.getStartDate()}'
                            : 'Available from ${reward.getStartDate()} to ${reward.getEndDate()}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: vh * 2),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit odio diam, vitae tincidunt tellus euismod vel. Donec ut scelerisque orci. Phasellus laoreet maximus odio, pellentesque commodo ligula pretium sed. Sed sed urna hendrerit, congue nulla ornare, malesuada nunc. Etiam convallis sodales lacinia. Pellentesque scelerisque, metus et lacinia tristique, augue augue auctor sem, id tincidunt ipsum risus sit amet enim. Sed leo justo, sollicitudin non turpis congue, sagittis ultricies orci. Aliquam consequat feugiat tortor, non consectetur nulla hendrerit in. Nulla pellentesque pellentesque dolor ut varius. Mauris mattis placerat ipsum, dignissim vestibulum ligula. Sed quis porttitor augue. Nunc et venenatis tortor. Fusce id est justo. Nunc et enim ut nunc mattis dignissim sit amet ut leo. Donec lobortis mattis massa ac ultrices.",
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
