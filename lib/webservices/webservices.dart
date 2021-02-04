import 'package:football_te/constants/constants.dart';
import 'package:football_te/models/all_events_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WebServices {
  static Future<List<AllEvents>> fetchAllEvents() async {
    final url = allEvents;
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $bearerToken',
    });
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      var allEvents = data['allEvents'] as List;
      return allEvents
          .map<AllEvents>((json) => AllEvents.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to get all events");
    }
  }
}
