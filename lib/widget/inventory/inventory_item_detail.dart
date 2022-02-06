import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/item.dart';

class InventoryItemDetail extends StatelessWidget {
  const InventoryItemDetail({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: vh * 5,
        width: vw * 80,
        child: ElevatedButton(
          child: Text('REDEEM'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                actionsAlignment: MainAxisAlignment.spaceBetween,
                title: Text('Redeem?'),
                content: Text('Are you sure?\n'
                    'You will have 20 minutes'),
                actions: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context, 'Cancel');
                    },
                  ),
                  ElevatedButton(
                    child: Text('Redeem'),
                    onPressed: () {
                      Navigator.pop(context, 'Redeem');
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 5, 10, vh * 8),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                height: vh * 30,
                width: vw * 100,
                fit: BoxFit.cover,
                image: NetworkImage(
                  item.imageUrl,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  item.endDate == null
                      ? 'Offer starts on ${item.getStartDate()}'
                      : 'Available from ${item.getStartDate()} to ${item.getExpireDate()}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Text(
              item.name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              item.partner.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              item.partner.address,
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
    );
  }
}
