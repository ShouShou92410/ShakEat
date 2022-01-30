import 'package:flutter/material.dart';

class ShopItemDetail extends StatefulWidget {
  const ShopItemDetail({Key? key}) : super(key: key);

  @override
  _ShopItemDetailState createState() => _ShopItemDetailState();
}

class _ShopItemDetailState extends State<ShopItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.white.withOpacity(0.5),
        // shadowColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
      ),
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image(
                // alignment: Alignment.topCenter,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1040464_11-6d03a3e.jpg",
                ),
              ),
            ),
            Text("item description "),
          ],
        ),
      ),
    );
  }
}
