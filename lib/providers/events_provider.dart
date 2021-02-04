import 'package:flutter/material.dart';
import 'package:football_te/models/all_events_model.dart';
import 'package:football_te/webservices/webservices.dart';

class EventProvider with ChangeNotifier {
  List<AllEvents> _allEvents = [];

  List<AllEvents> get allEvents {
    return [..._allEvents];
  }

  Future<void> getEventsData() async {
    final getAllEvents = await WebServices.fetchAllEvents();
    _allEvents = getAllEvents;
    notifyListeners();
  }
}
