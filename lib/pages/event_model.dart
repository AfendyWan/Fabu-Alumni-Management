import 'package:flutter/foundation.dart';

class Event {
  final int eventID;
  final String eventTitle;
  final String eventDescription;
  final String eventImage;
  final String eventDate;
  final String eventTime;
  final String eventVenue;
  final int eventCapacity;
  final double eventFee;
  final String eventOrganizer;

  Event({
    @required this.eventID,
    @required this.eventTitle,
    @required this.eventDescription,
    @required this.eventImage,
    @required this.eventDate,
    @required this.eventTime,
    @required this.eventVenue,
    @required this.eventCapacity,
    @required this.eventFee,
    @required this.eventOrganizer,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      eventCapacity: json['eventCapacity'] as int,
      eventID: json['eventID'] as int,
      eventTitle: json['eventTitle'] as String,
      eventDescription: json['eventDescription'] as String,
      eventImage: json['eventImage'] as String,
      eventDate: json['eventDate'] as String,
      eventTime: json['eventTime'] as String,
      eventVenue: json['eventVenue'] as String,
      eventFee: json['eventFee'] as double,
      eventOrganizer: json['eventOrganizer'] as String,
    );
  }
}
