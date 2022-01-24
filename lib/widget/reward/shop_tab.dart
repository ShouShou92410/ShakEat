import 'package:flutter/material.dart';
import 'package:shake_and_eat/widget/reward/reward_item.dart';

class ShopTab extends StatefulWidget {
  const ShopTab({Key? key}) : super(key: key);

  @override
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  final List _items = [
    "Item 1",
    "Item 2",
    "Item3",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // children: _items.map((e) => Center(child: Text(e))).toList(),
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return const RewardItem();
        }),
      ),
    );
  }
}
