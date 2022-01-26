import 'package:flutter/material.dart';

class RewardItem extends StatefulWidget {
  const RewardItem({Key? key}) : super(key: key);

  @override
  _RewardItemState createState() => _RewardItemState();
}

class _RewardItemState extends State<RewardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 10,
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://scontent.fyyc4-1.fna.fbcdn.net/v/t39.30808-6/244137766_407368564286911_8833076291010170402_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=np_AKR2TEK0AX_CEBKY&_nc_ht=scontent.fyyc4-1.fna&oh=00_AT89RJyTZr-q5WGfP_GMhKLD--ZTXUAljwz1yAYpm_SmIw&oe=61F37CEE"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3000 points',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Column(
                          children: [
                            Text(
                              'Item name',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            Text(
                              'Location name',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Text(
                              'Address',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Expires on:',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
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
      ),
    );
  }
}
