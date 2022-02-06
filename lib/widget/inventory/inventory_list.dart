import 'package:flutter/material.dart';
import 'package:shake_and_eat/model/item.dart';

import 'package:shake_and_eat/widget/inventory/inventory_item.dart';

class InventoryList extends StatelessWidget {
  const InventoryList({Key? key, required this.inventory}) : super(key: key);

  final List<Item> inventory;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: inventory.length,
      itemBuilder: (BuildContext context, int index) =>
          InventoryItem(item: inventory[index]),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
