import 'dart:convert';
import '../pages/alumni_model.dart';
import '../pages/news_model.dart';
import '../pages/http_service.dart';
import 'package:http/http.dart';
import 'charity_model.dart';
import 'event_model.dart';
import 'profile_model.dart';

class ConcreteHttpService extends HttpService {
  //This link is to allow the mobile to fetch data from web using API and package http
  //This link will be change from time to time due to using ngrok to make the localhost online
  //This link will only be permanent when the web is officially deploy real time

  Future<List<Alumni>> getAlumnies() async {
    Response res = await get(getAlumniRestAPI_Link());

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Alumni> posts =
          body.map((dynamic item) => Alumni.fromJson(item)).toList();

      return posts;
    } else {
      throw "can't get posts";
    }
  }

  Future<List<News>> getNews() async {
    Response res = await get(getNewsRestAPI_Link());

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<News> news =
          body.map((dynamic item) => News.fromJson(item)).toList();

      return news;
    } else {
      throw "can't get news";
    }
  }

  Future<List<Event>> getEvents() async {
    Response res = await get(getEventRestAPI_Link());

    switch (res.statusCode) {
      case 200:
        return getexecuteSuccessState(res);
        break;

      case 400:
        executeClientErrorState();
        break;

      case 500:
        executeServerErrorState();
        break;

      default:
        throw "Can't get events";
    }
  }

  Future<List<Event>> getexecuteSuccessState(Response res) async {
    List<dynamic> body = jsonDecode(res.body);

    List<Event> events =
        body.map((dynamic item) => Event.fromJson(item)).toList();

    return events;
  }

  void executeClientErrorState() async {
    throw "Client error.";
  }

  void executeServerErrorState() async {
    throw "Server Error.";
  }

  Future<List<Profile>> getProfile() async {
    Response res = await get(getProfileRestAPI_Link());

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Profile> profile =
          body.map((dynamic item) => Profile.fromJson(item)).toList();

      return profile;
    } else {
      throw "Can't get profile";
    }
  }

  Future<List<Charity>> getCharity() async {
    Response res = await get(getCharityRestAPI_Link());

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
