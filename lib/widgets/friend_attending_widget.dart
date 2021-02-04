import 'package:flutter/material.dart';

class FriendAttendingWidget extends StatelessWidget {
  final String allEventsNetworkImage;
  FriendAttendingWidget({@required this.allEventsNetworkImage});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(allEventsNetworkImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [],
      ),
    );
  }
}
