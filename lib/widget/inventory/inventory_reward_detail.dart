import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import 'package:ShakEat/model/UserReward.dart';

class InventoryRewardDetail extends StatefulWidget {
  const InventoryRewardDetail({Key? key, required this.reward})
      : super(key: key);

  final UserReward reward;

  @override
  State<InventoryRewardDetail> createState() => _InventoryRewardDetailState();
}

class _InventoryRewardDetailState extends State<InventoryRewardDetail> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
    presetMillisecond: StopWatchTimer.getMilliSecFromMinute(20),
  );

  bool countDown = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    final vh = MediaQuery.of(context).size.height / 100;
    final vw = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Reward details'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: vh * 5,
        width: vw * 90,
        child: ElevatedButton(
          child: countDown
              ? StreamBuilder<int>(
                  stream: _stopWatchTimer.rawTime,
                  initialData: _stopWatchTimer.rawTime.value,
                  builder: (context, snap) {
                    final value = snap.data!;
                    final displayTime = StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      milliSecond: false,
                    );
                    return Text(displayTime);
                  },
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('REDEEM'),
                    SizedBox(width: vw * 2),
                    Icon(Icons.arrow_forward)
                  ],
                ),
          onPressed: countDown
              ? null
              : () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      actionsAlignment: MainAxisAlignment.spaceBetween,
                      title: Text('Redeem?'),
                      content: Text('Are you sure?\n'
                          'You will have 20 minutes'),
                      actions: [
                        TextButton(
                          child: Text('Cancel'),
                          onPressed: () {
                            Navigator.pop(context, 'Cancel');
                          },
                        ),
                        ElevatedButton(
                          child: Text('Redeem'),
                          onPressed: () {
                            Navigator.pop(context, 'Redeem');
                            setState(() {
                              countDown = true;
                              _stopWatchTimer.onExecute
                                  .add(StopWatchExecute.start);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: vh * 8),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Image(
                width: double.infinity,
                height: vh * 40,
                fit: BoxFit.cover,
                image: NetworkImage(widget.reward.imageUrl),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(vw * 3, vh * 2, vw * 3, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.reward.partnerName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.reward.partnerAddress,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: vh * 2),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      widget.reward.name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.reward.endDate == null
                            ? 'Offer starts on ${widget.reward.getStartDate()}'
                            : 'Available from ${widget.reward.getStartDate()} to ${widget.reward.getEndDate()}',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: vh * 2),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit odio diam, vitae tincidunt tellus euismod vel. Donec ut scelerisque orci. Phasellus laoreet maximus odio, pellentesque commodo ligula pretium sed. Sed sed urna hendrerit, congue nulla ornare, malesuada nunc. Etiam convallis sodales lacinia. Pellentesque scelerisque, metus et lacinia tristique, augue augue auctor sem, id tincidunt ipsum risus sit amet enim. Sed leo justo, sollicitudin non turpis congue, sagittis ultricies orci. Aliquam consequat feugiat tortor, non consectetur nulla hendrerit in. Nulla pellentesque pellentesque dolor ut varius. Mauris mattis placerat ipsum, dignissim vestibulum ligula. Sed quis porttitor augue. Nunc et venenatis tortor. Fusce id est justo. Nunc et enim ut nunc mattis dignissim sit amet ut leo. Donec lobortis mattis massa ac ultrices.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
