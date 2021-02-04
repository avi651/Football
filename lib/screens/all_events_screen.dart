import 'package:flutter/material.dart';
import 'package:football_te/providers/events_provider.dart';
import 'package:football_te/widgets/all_events_list_widget.dart';
import 'package:provider/provider.dart';

class AllEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football'),
      ),
      body: AllEventsListWidget(),
    );
  }
}
