import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ShakEat/helper.dart';
import 'package:ShakEat/model/Partner.dart';

import 'package:ShakEat/model/User.dart';
import 'package:ShakEat/widget/shop/shop_list.dart';
import 'package:ShakEat/widget/shop/shop_partner_preview.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<Partner> partners = getPartners();
  Partner? partner;

  void viewAll(Partner p) {
    setState(() {
      partner = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<User>(builder: (BuildContext context, user, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Shake and Eat"),
          centerTitle: true,
          leading: partner == null
              ? SizedBox.shrink()
              : IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(() {
                      partner = null;
                    });
                  },
                ),
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text(
                "Points: ${user.points}",
              ),
            )
          ],
        ),
        body: partner == null
            ? ListView.separated(
                itemCount: partners.length + 1,
                itemBuilder: (BuildContext context, int index) => index == 0
                    ? Text('TODO: Section')
                    : ShopPartnerPreview(
                        partner: partners[index - 1], viewAll: viewAll),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 30),
              )
            : ShopList(partner: partner as Partner),
      );
    });
  }
}
