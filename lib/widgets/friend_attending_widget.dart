import 'package:flutter/material.dart';

class FriendAttendingWidget extends StatelessWidget {
  final String allEventsNetworkImage;
  FriendAttendingWidget({@required this.allEventsNetworkImage});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: NetworkImage(allEventsNetworkImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
