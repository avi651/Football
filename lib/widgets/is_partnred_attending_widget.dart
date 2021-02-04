import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/rendering.dart';
import 'package:football_te/models/all_events_model.dart';
import 'package:football_te/screens/detail_event_screen.dart';

class IsPartneredAttendingWidget extends StatelessWidget {
  final AllEvents allEvents;
  IsPartneredAttendingWidget({@required this.allEvents});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Navigator.of(context)
        //  .pushNamed(DetailEventScreen.routeName, arguments: this.allEvents);
        getItemAndNavigate(this.allEvents, context);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 380,
            child: Column(
              children: [
                Hero(
                  tag: allEvents.id,
                  child: CachedNetworkImage(
                    height: 200,
                    imageUrl:
                        allEvents.mainImage != null ? allEvents.mainImage : "",
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
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 16.0, bottom: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    child: Center(
                                        child: Text('Partnered',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    height: 30,
                                    width: 100,
                                    child: Center(
                                        child: Text('Football',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold))),
                                    color: Colors.white,
                                  ),
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
                                Spacer(),
                                Container(
                                  decoration: new BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  ),
                                  height: 30,
                                  width: 100,
                                  child: Center(
                                      child: Text('200',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold))),
                                  //color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total prize:${200}',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            Spacer(),
                            Icon(
                              Icons.share,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.favorite_outline,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_alarms,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            RichText(
                              text: new TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),

                                children: <TextSpan>[
                                  new TextSpan(
                                      text: 'Theme left to Book: ',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  new TextSpan(
                                      text: '3 hour',
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_alarms,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '9/22 attending total',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.access_alarms,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'camden Rinho Truf, 21'.substring(0, 15) + "...",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.access_alarms,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
