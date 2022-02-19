import 'package:flutter/foundation.dart';

import 'package:shake_and_eat/model/reward.dart';
import 'package:shake_and_eat/model/partner.dart';

class User extends ChangeNotifier {
  List<Reward> inventory = [
    Reward(
        100,
        "rice bowl",
        "rice bowl description",
        "https://images.unsplash.com/photo-1600289031464-74d374b64991?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1075&q=80",
        Partner("PartnerA", "PartnerA location"),
        DateTime.now()),
    Reward(
        200,
        "curry",
        "curry description",
        "https://images.unsplash.com/photo-1574484284002-952d92456975?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        Partner("PartnerB", "PartnerB location"),
        DateTime.now()),
    Reward(
        300,
        "scallop",
        "scallop description",
        "https://images.unsplash.com/photo-1587116861219-230ac19df971?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        Partner("PartnerC", "PartnerC location"),
        DateTime.now()),
    Reward(
        2000,
        "meat",
        "meat description",
        "https://images.unsplash.com/photo-1546964124-0cce460f38ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        Partner("PartnerD", "PartnerD location"),
        DateTime.now()),
    Reward(
        700000,
        "This is a loooooooooooong title with desert",
        "desert description",
        "https://images.unsplash.com/photo-1587314168485-3236d6710814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1078&q=80",
        Partner("PartnerE loooooooooooong name", "PartnerE location"),
        DateTime.now(),
        DateTime.now().add(Duration(days: 7))),
  ];
  int points = 0;

  User() {
    inventory.addAll(inventory.sublist(0, 5));
    //inventory.addAll(inventory);
  }

  void AddPoints(int points) {
    this.points += points;
    notifyListeners();
  }
}
