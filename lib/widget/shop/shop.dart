import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shake_and_eat/helper.dart';
import 'package:shake_and_eat/model/Partner.dart';

import 'package:shake_and_eat/model/User.dart';
import 'package:shake_and_eat/widget/shop/shop_list.dart';
import 'package:shake_and_eat/widget/shop/shop_partner_preview.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Partner> partners = getPartners();

  @override
  Widget build(BuildContext context) {
    return Consumer<User>(builder: (BuildContext context, user, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Shake and Eat"),
          centerTitle: true,
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                "Points: ${user.points}",
              ),
            )
          ],
        ),
        body: ListView.separated(
          itemCount: partners.length + 1,
          itemBuilder: (BuildContext context, int index) => index == 0
              ? Text('TODO: Section')
              : ShopPartnerPreview(partner: partners[index - 1]),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 30),
        ),
        // body: ShopList(rewards: user.inventory),
      );
    });
  }
}
