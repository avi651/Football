import 'package:flutter/material.dart';
import 'package:football_te/providers/events_provider.dart';
import 'package:provider/provider.dart';

class AllEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<EventProvider>(context, listen: false).getEventsData();
    return Scaffold();
  }
}
