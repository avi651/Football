import 'package:flutter/material.dart';
import 'package:football_te/providers/events_provider.dart';
import 'package:football_te/widgets/friend_attending_widget.dart';
import 'package:provider/provider.dart';

class AllEventsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          Provider.of<EventProvider>(context, listen: false).getEventsData(),
      builder: (ctx, snapshot) =>
          snapshot.connectionState == ConnectionState.waiting
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Consumer<EventProvider>(
                  child: Center(
                    child: const Text('No and mateches'),
                  ),
                  builder: (ctx, allEventsConsumer, ch) =>
                      allEventsConsumer.allEvents.length <= 0
                          ? ch
                          : ListView.builder(
                              itemCount: allEventsConsumer.allEvents.length,
                              itemBuilder: (ctx, i) => FriendAttendingWidget(
                                allEventsNetworkImage:
                                    allEventsConsumer.allEvents[i].mainImage,
                              ),
                            ),
                ),
    );
  }
}
