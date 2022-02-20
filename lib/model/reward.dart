class Reward {
  int cost;
  String name;
  String description;
  String imageUrl;
  DateTime startDate;
  DateTime? endDate;

  Reward(
    this.cost,
    this.name,
    this.description,
    this.imageUrl,
    this.startDate, [
    this.endDate,
  ]);

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
