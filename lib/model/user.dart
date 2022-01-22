import 'package:flutter/foundation.dart';

class User extends ChangeNotifier {
  int points = 0;

  void AddPoints(int points) {
    this.points += points;
    notifyListeners();
  }
}
