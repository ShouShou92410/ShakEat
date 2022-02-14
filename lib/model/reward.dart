import 'package:shake_and_eat/model/partner.dart';

class Reward {
  int cost;
  String name;
  String description;
  String imageUrl;
  DateTime startDate;
  DateTime? endDate;
  Partner partner;

  Reward(this.cost, this.name, this.description, this.imageUrl, this.partner,
      this.startDate,
      [this.endDate]);

  String getStartDate() {
    return startDate
        .toIso8601String()
        .split('T')[0]
        .replaceAll(RegExp(r'-'), '/');
  }

  String getEndDate() {
    return endDate
            ?.toIso8601String()
            .split('T')[0]
            .replaceAll(RegExp(r'-'), '/') ??
        "NEVER";
  }
}
