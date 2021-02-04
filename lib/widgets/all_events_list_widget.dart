import 'package:flutter/material.dart';
import 'package:football_te/providers/events_provider.dart';
import 'package:football_te/widgets/friend_attending_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AllEventsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          Provider.of<EventProvider>(context, listen: false).getEventsData(),
      builder: (ctx, snapshot) =>
          snapshot.connectionState == ConnectionState.waiting
              ? Center(
                  child: const Text('Fetching the data'),
                )
              : Consumer<EventProvider>(
                  child: Center(
                    child: const Text('No matches'),
                  ),
                  builder: (ctx, allEventsConsumer, ch) =>
                      allEventsConsumer.allEvents.length <= 0
                          ? ch
                          : AnimationLimiter(
                              child: ListView.builder(
                                itemCount: allEventsConsumer.allEvents.length,
                                itemBuilder: (ctx, i) =>
                                    AnimationConfiguration.staggeredList(
                                  position: i,
                                  duration: const Duration(milliseconds: 2000),
                                  child: SlideAnimation(
                                    verticalOffset: 50.0,
                                    child: FadeInAnimation(
                                      child: FriendAttendingWidget(
                                        allEventsNetworkImage: allEventsConsumer
                                            .allEvents[i].mainImage,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                ),
    );
  }
}
