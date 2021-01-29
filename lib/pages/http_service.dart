import 'dart:convert';
import '../pages/alumni_model.dart';
import 'package:http/http.dart';
import 'charity_model.dart';
import 'event_model.dart';
import 'profile_model.dart';

//This is an abstract class, it is used to force the subclass (concreteHttpService.dart)
// to implements its methods
class HttpService {
  String getAlumniRestAPI_Link() {
    //https://alumni-system-fabu.herokuapp.com/
    //  return 'https://alumni-module.herokuapp.com/mobile-api/alumniList';
    return 'https://alumni-system-fabu.herokuapp.com/mobile-api/alumniList';
  }

  String getNewsRestAPI_Link() {
    return 'https://alumni-system-fabu.herokuapp.com/News';
  }

  String getEventRestAPI_Link() {
    return 'https://alumni-system-fabu.herokuapp.com/Event';
  }

  String getCharityRestAPI_Link() {
    return 'https://alumni-system-fabu.herokuapp.com/Charity';
  }

  String getProfileRestAPI_Link() {
    return 'https://alumni-module.herokuapp.com/ManageUserController?option=mobile-api';
  }
}
