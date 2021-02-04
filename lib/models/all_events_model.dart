import 'package:intl/intl.dart';

class AllEvents {
  String name;
  String dateTime;
  String bookBy;
  int ticketsSold;
  int maxTickets;
  int friendsAttending;
  int price;
  bool isPartnered;
  String sport;
  int totalPrize;
  String location;
  bool isRecommended;
  String mainImage;
  int id;

  AllEvents(
      {this.name,
      this.dateTime,
      this.bookBy,
      this.ticketsSold,
      this.maxTickets,
      this.friendsAttending,
      this.price,
      this.isPartnered,
      this.sport,
      this.totalPrize,
      this.location,
      this.isRecommended,
      this.mainImage,
      this.id});

  AllEvents.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    dateTime = json['dateTime'];

    bookBy = json['bookBy'];
    ticketsSold = json['ticketsSold'];
    maxTickets = json['maxTickets'];
    friendsAttending = json['friendsAttending'];
    price = parseInt(json['price']);
    isPartnered = json['isPartnered'];
    sport = json['sport'];
    totalPrize = parseInt(json['totalPrize']);
    location = json['location'];
    isRecommended = json['isRecommended'];
    mainImage = json['mainImage'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['dateTime'] = this.dateTime;
    data['bookBy'] = this.bookBy;
    data['ticketsSold'] = this.ticketsSold;
    data['maxTickets'] = this.maxTickets;
    data['friendsAttending'] = this.friendsAttending;
    data['price'] = this.price;
    data['isPartnered'] = this.isPartnered;
    data['sport'] = this.sport;
    data['totalPrize'] = this.totalPrize;
    data['location'] = this.location;
    data['isRecommended'] = this.isRecommended;
    data['mainImage'] = this.mainImage;
    data['id'] = this.id;
    return data;
  }
}

int parseInt(data) {
  if (data != null) {
    if (data is int) {
      return data;
    } else if (data is double) {
      return data.round();
    } else if (data is String) {
      return int.tryParse(data ?? 0);
    }
  } else {
    return 0;
  }
}
