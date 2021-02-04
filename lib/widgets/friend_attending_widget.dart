import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/rendering.dart';

import 'package:football_te/models/all_events_model.dart';
import 'package:football_te/screens/detail_event_screen.dart';

class FriendAttendingWidget extends StatelessWidget {
  final AllEvents allEvents;
  FriendAttendingWidget({@required this.allEvents});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getItemAndNavigate(this.allEvents, context);
        //Navigator.pushNamed(context, this.allEvents);
        //Navigator.of(context)
        //  .pushNamed(DetailEventScreen.routeName, arguments: this.allEvents);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Hero(
            tag: allEvents.id,
            child: CachedNetworkImage(
              height: 200,
              imageUrl: allEvents.mainImage != null ? allEvents.mainImage : "",
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
              imageBuilder: (context, imageProvider) => Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    // colorFilter:
                    //   ColorFilter.mode(, BlendMode.colorBurn)
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.alarm, color: Colors.white),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            allEvents.dateTime,

                            //DateUtil()
                            //  .formattedDate(DateTime.parse(allEvents.dateTime)),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        allEvents.name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 90,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${allEvents.ticketsSold}' +
                                        '/' +
                                        '${allEvents.maxTickets}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: 150,
                              height: 35,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  color: Colors.blue,
                                  width: 150,
                                  height: 25,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 20.0,
                                        child: new Icon(
                                          Icons.monetization_on,
                                          size: 25.0,
                                        ),
                                      ),
                                      new Positioned(
                                        left: 30.0,
                                        child: new Icon(
                                          Icons.monetization_on,
                                          size: 25.0,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Positioned(
                                          left: 150.0,
                                          child: Text(
                                            '+5 friends',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 80,
                                height: 35,
                                color: Theme.of(context).primaryColor,
                                child: Center(
                                  child: Text(
                                    '\£ ${'11.98'}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  getItemAndNavigate(AllEvents item, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailEventScreen(allEvents: item)));
  }
}
