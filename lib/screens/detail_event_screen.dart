import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_te/models/all_events_model.dart';

class DetailEventScreen extends StatelessWidget {
  static const routeName = '/event-details';
  final AllEvents allEvents;
  DetailEventScreen({this.allEvents});

  //DetailEventScreen({Key key, this.allEvents}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //backgroundColor: Colors.transparent,

            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //title: Text(allEvents.name),

              background: Hero(
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
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                Text(
                  '\$${100}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Text(
                    "",
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ),
                ),
                SizedBox(
                  height: 800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
