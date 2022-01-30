import 'package:flutter/material.dart';

class RewardShopItemDetail extends StatefulWidget {
  const RewardShopItemDetail({Key? key}) : super(key: key);

  @override
  _RewardShopItemDetailState createState() => _RewardShopItemDetailState();
}

class _RewardShopItemDetailState extends State<RewardShopItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.5),
        title: const Text("Shake and Eat"),
        centerTitle: true,
      ),
      body: Expanded(
        child: Column(
          children: [
            Image.network(
              "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1040464_11-6d03a3e.jpg",
              fit: BoxFit.cover,
            ),
            Text("item description "),
          ],
        ),
      ),
    );
  }
}
