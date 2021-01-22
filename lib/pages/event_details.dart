import 'package:flutter/material.dart';
import 'package:mobilesda3/pages/http_service.dart';

import 'event_model.dart';

class EventDetail extends StatelessWidget {
  final Event event;

  EventDetail({@required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(event.eventTitle),
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Title"),
                  subtitle: Text(event.eventTitle),
                ),
                ListTile(
                  title: Text("Description"),
                  subtitle: Text(event.eventDescription),
                ),
                ListTile(
                  title: Text("Date"),
                  subtitle: Text(event.eventDate),
                ),
                ListTile(
                  title: Text("Time"),
                  subtitle: Text(event.eventTime),
                ),
                ListTile(
                  title: Text("Venue"),
                  subtitle: Text(event.eventVenue),
                ),
                ListTile(
                  title: Text("Capacity"),
                  subtitle: Text("${event.eventCapacity}"),
                ),
                ListTile(
                  title: Text("Fee"),
                  subtitle: Text("${event.eventFee}"),
                ),
                ListTile(
                  title: Text("Organizer"),
                  subtitle: Text(event.eventOrganizer),
                ),
              ],
            ),
            shadowColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
