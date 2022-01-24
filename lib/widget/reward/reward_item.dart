import 'package:flutter/material.dart';

class RewardItem extends StatefulWidget {
  const RewardItem({Key? key}) : super(key: key);

  @override
  _RewardItemState createState() => _RewardItemState();
}

class _RewardItemState extends State<RewardItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 5,
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              Image(
                fit: BoxFit.fill,
                width: double.infinity,
                height: 150,
                image: NetworkImage(
                    "https://scontent.fyyc4-1.fna.fbcdn.net/v/t39.30808-6/244137766_407368564286911_8833076291010170402_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=np_AKR2TEK0AX_CEBKY&_nc_ht=scontent.fyyc4-1.fna&oh=00_AT89RJyTZr-q5WGfP_GMhKLD--ZTXUAljwz1yAYpm_SmIw&oe=61F37CEE"),
              ),
              Text(
                'Item',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
