import 'package:flutter/material.dart';
import 'package:shake_and_eat/widget/reward/shop_item_detail.dart';

class ShopItem extends StatefulWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  _ShopItemState createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 10,
        child: Stack(
          children: <Widget>[
            Row(
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
                          '3000 points',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Column(
                          children: [
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
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Expires on:',
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
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopItemDetail()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
