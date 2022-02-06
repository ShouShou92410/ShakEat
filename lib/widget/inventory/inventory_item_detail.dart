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
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
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
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              item.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'Starts on: ${item.getStartDate()}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Expires on: ${item.getExpireDate()}',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            FloatingActionButton.extended(
              label: Text('REDEEM'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
