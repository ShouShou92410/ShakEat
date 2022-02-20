import 'model/Partner.dart';
import 'model/Reward.dart';
import 'model/User.dart';
import 'model/UserReward.dart';

Partner pA = Partner("PartnerA", "PartnerA location");
Partner pB = Partner("PartnerB", "PartnerB location");
Partner pC = Partner("PartnerC", "PartnerC location");
Partner pD = Partner("PartnerD", "PartnerD location");
Partner pE = Partner("PartnerE loooooooooooong name", "PartnerE location");

Reward r1 = Reward(
  100,
  "rice bowl",
  "rice bowl description",
  "https://images.unsplash.com/photo-1600289031464-74d374b64991?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1075&q=80",
  DateTime.now(),
);
Reward r2 = Reward(
  200,
  "curry",
  "curry description",
  "https://images.unsplash.com/photo-1574484284002-952d92456975?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  DateTime.now(),
);
Reward r3 = Reward(
  300,
  "scallop",
  "scallop description",
  "https://images.unsplash.com/photo-1587116861219-230ac19df971?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  DateTime.now(),
);
Reward r4 = Reward(
  2000,
  "meat",
  "meat description",
  "https://images.unsplash.com/photo-1546964124-0cce460f38ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  DateTime.now(),
);
Reward r5 = Reward(
  700000,
  "This is a loooooooooooong title with desert",
  "desert description",
  "https://images.unsplash.com/photo-1587314168485-3236d6710814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1078&q=80",
  DateTime.now(),
  DateTime.now().add(Duration(days: 7)),
);

User getUser() {
  User user = User();
  user.points = 123456789;
  user.inventory = getInventory();

  user.inventory.addAll(user.inventory.sublist(0, 5));

  return user;
}

List<Partner> getPartners() {
  pA.offers.add(r1);
  pA.offers.add(r2);
  pA.offers.add(r3);
  pA.offers.add(r4);
  pA.offers.add(r5);

  pB.offers.add(r2);
  pC.offers.add(r3);
  pD.offers.add(r4);
  pE.offers.add(r5);

  List<Partner> partners = [pA, pB, pC, pD, pE];

  return partners;
}

List<UserReward> getInventory() {
  List<Partner> partners = getPartners();
  List<UserReward> inventory = [
    UserReward(partners[0].offers[0], partners[0].name, partners[0].address),
    UserReward(partners[1].offers[0], partners[1].name, partners[1].address),
    UserReward(partners[2].offers[0], partners[2].name, partners[2].address),
    UserReward(partners[3].offers[0], partners[3].name, partners[3].address),
    UserReward(partners[4].offers[0], partners[4].name, partners[4].address),
  ];

  return inventory;
}
