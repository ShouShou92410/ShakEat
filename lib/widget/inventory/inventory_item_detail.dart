import 'package:flutter/material.dart';

class InventoryItemDetail extends StatefulWidget {
  const InventoryItemDetail({Key? key}) : super(key: key);

  @override
  _InventoryItemDetailState createState() => _InventoryItemDetailState();
}

class _InventoryItemDetailState extends State<InventoryItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white.withOpacity(0.5),
        // shadowColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            label: Text('REDEEM'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
