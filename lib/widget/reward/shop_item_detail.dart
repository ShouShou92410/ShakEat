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
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1040464_11-6d03a3e.jpg",
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '3000 points',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  'Points: 5300 points',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            Text(
              'Expire on: 2022/01/01',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Item name',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Location name',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'Address',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'Item description',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            FloatingActionButton.extended(
              icon: Icon(Icons.add_shopping_cart),
              label: Text('PURCHASE'),
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
