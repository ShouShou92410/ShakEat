import 'model/Partner.dart';
import 'model/Reward.dart';
import 'model/User.dart';
import 'model/UserReward.dart';

User getUser() {
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

  User user = User();
  user.points = 123456789;
  user.inventory = [
    UserReward(r1, pA.name, pA.address),
    UserReward(r2, pB.name, pB.address),
    UserReward(r3, pC.name, pC.address),
    UserReward(r4, pD.name, pD.address),
    UserReward(r5, pE.name, pE.address),
  ];

  user.inventory.addAll(user.inventory.sublist(0, 5));

  return user;
}

Partner getPartner(String name, String address) {
  Partner partner = Partner(name, address);

  return partner;
}

Reward getReward(int cost, String name, String description, String imageUrl,
    DateTime startDate) {
  Reward reward = Reward(cost, name, description, imageUrl, startDate);

  return reward;
}

UserReward getUserReward(
    Reward reward, String partnerName, String partnerAddress) {
  UserReward userReward = UserReward(reward, partnerName, partnerAddress);

  return userReward;
}
