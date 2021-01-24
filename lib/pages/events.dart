import 'package:flutter/material.dart';
import 'package:mobilesda3/bloc.navigation_bloc/navigation_bloc.dart';
import '../pages/http_service.dart';
import 'event_details.dart';
import 'event_model.dart';
import '../pages/concreteHttpService.dart';
import '../pages/mainAppBarInterface.dart';

class EventMainPage extends MainAppBarInterface with NavigationStates {
  final ConcreteHttpService concreteHttpService = ConcreteHttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: MainAppBarInterface(
          title: const Text('Events',
              style: TextStyle(fontSize: 28, color: Colors.white)),
        ),
        body: FutureBuilder(
          future: concreteHttpService.getEvents(),
          builder: (BuildContext context, AsyncSnapshot<List<Event>> snapshot) {
            if (snapshot.hasData) {
              List<Event> events = snapshot.data;

              return ListView(
                children: events
                    .map((Event event) => ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://image.flaticon.com/icons/png/512/1458/1458512.png"),
                          ),
                          title: Text(event.eventTitle),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          subtitle: Text(
                            event.eventDescription,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 35.0),
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EventDetail(
                              event: event,
                            ),
                          )),
                        ))
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
