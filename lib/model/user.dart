import 'package:flutter/foundation.dart';

import 'package:shake_and_eat/model/UserReward.dart';

class User extends ChangeNotifier {
  List<UserReward> inventory = [];
  int points = 0;

  User();

  void AddPoints(int points) {
    this.points += points;
    notifyListeners();
  }
}
