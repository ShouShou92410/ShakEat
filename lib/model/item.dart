import 'package:shake_and_eat/model/partner.dart';

class Item {
  int cost;
  String name;
  String description;
  String imageUrl;
  DateTime? startDate;
  DateTime? endDate;
  Partner partner;

  Item(this.cost, this.name, this.description, this.imageUrl, this.partner,
      [this.startDate, this.endDate]);

  String getExpireDate() {
    return endDate?.toIso8601String() ?? "NEVER";
  }
}
