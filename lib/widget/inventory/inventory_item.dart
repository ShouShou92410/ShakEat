import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/item.dart';

import 'package:shake_and_eat/widget/inventory/inventory_item_detail.dart';

class InventoryItem extends StatelessWidget {
  const InventoryItem({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                width: 150,
                fit: BoxFit.cover,
                image: NetworkImage(
                  item.imageUrl,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    item.partner.name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Expire: ${item.getExpireDate()}',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InventoryItemDetail()),
                          );
                        },
                        child: Text("Detail"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
