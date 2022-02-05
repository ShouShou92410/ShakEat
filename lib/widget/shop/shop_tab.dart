import 'package:flutter/material.dart';
import 'package:shake_and_eat/widget/reward/shop_item.dart';

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
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => const ShopItem(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 10,
      ),
    );
    // child: GridView.count(
    //   childAspectRatio: 1,
    //   mainAxisSpacing: 20,
    //   crossAxisSpacing: 20,
    //   // Create a grid with 2 columns. If you change the scrollDirection to
    //   // horizontal, this produces 2 rows.
    //   crossAxisCount: 2,
    //   // children: _items.map((e) => Center(child: Text(e))).toList(),
    //   // Generate 100 widgets that display their index in the List.
    //   children: List.generate(100, (index) {
    //     return const RewardItem();
    //   }),
    // ),
  }
}
