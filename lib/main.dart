import 'package:flutter/material.dart';
import 'package:football_te/providers/events_provider.dart';
import 'package:football_te/screens/all_events_screen.dart';
import 'package:football_te/screens/detail_event_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => EventProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Football',
        theme: ThemeData(
          primaryColor: Colors.cyan,
          accentColor: Colors.indigo,
          canvasColor: Colors.grey[100],
        ),
        home: AllEventsScreen(),
        routes: {
          DetailEventScreen.routeName: (ctx) => DetailEventScreen(),
        },
      ),
    );
  }
}
