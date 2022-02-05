import 'package:flutter/material.dart';

import 'package:shake_and_eat/widget/inventory/inventory_item_detail.dart';

class InventoryItem extends StatefulWidget {
  const InventoryItem({Key? key}) : super(key: key);

  @override
  _InventoryItemState createState() => _InventoryItemState();
}

class _InventoryItemState extends State<InventoryItem> {
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
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1040464_11-6d03a3e.jpg",
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item name',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InventoryItemDetail()),
                          );
                        },
                        child: Text("Redeem"),
                      ),
                      Text(
                        'Expire on: 2022/01/01',
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
    );
  }
}
