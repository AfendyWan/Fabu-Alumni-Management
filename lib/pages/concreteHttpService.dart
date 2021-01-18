import 'dart:convert';
import '../pages/alumni_model.dart';
import '../pages/http_service.dart';
import 'package:http/http.dart';
import 'charity_model.dart';
import 'event_model.dart';

class ConcreteHttpService extends HttpService{
  //This link is to allow the mobile to fetch data from web using API and package http
  //This link will be change from time to time due to using ngrok to make the localhost online
  //This link will only be permanent when the web is officially deploy real time


  Future<List<Alumni>> getAlumnies() async {
    Response res = await get(getAlumniRestAPI_Link);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Alumni> posts =
      body.map((dynamic item) => Alumni.fromJson(item)).toList();

      return posts;
    } else {
      throw "can't get posts";
    }
  }

  Future<List<Event>> getEvents() async {
    Response res = await get(getEventRestAPI_Link());

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Event> events =
      body.map((dynamic item) => Event.fromJson(item)).toList();

      return events;
    } else {
      throw "Can't get events lists.";
    }
  }

  Future<List<Charity>> getCharity() async {
    Response res = await get(getCharityRestAPI_Link);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Charity> charity =
      body.map((dynamic item) => Charity.fromJson(item)).toList();

      return charity;
    } else {
      throw "Can't get charity lists.";
    }
  }
}