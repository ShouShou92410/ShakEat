import 'package:flutter/material.dart';

class InventoryTab extends StatefulWidget {
  const InventoryTab({Key? key}) : super(key: key);

  @override
  _InventoryTabState createState() => _InventoryTabState();
}

class _InventoryTabState extends State<InventoryTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => const Text('item'),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
