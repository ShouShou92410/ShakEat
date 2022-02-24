import 'package:ShakEat/model/Reward.dart';

class UserReward extends Reward {
  String partnerName;
  String partnerAddress;

  UserReward(
    Reward reward,
    this.partnerName,
    this.partnerAddress,
  ) : super(
          reward.cost,
          reward.name,
          reward.description,
          reward.imageUrl,
          reward.startDate,
        );
}
