import 'package:flutter/material.dart';
import 'package:shake_and_eat/widget/reward/inventory_item.dart';

class InventoryList extends StatefulWidget {
  const InventoryList({Key? key}) : super(key: key);

  @override
  _InventoryListState createState() => _InventoryListState();
}

class _InventoryListState extends State<InventoryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => const InventoryItem(),
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
