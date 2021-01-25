import 'package:flutter/foundation.dart';

class Profile {
  final String email;
  final String userID;
  final String name;
  final String password;
  final String phoneNum;
  final String role;

  Profile(
      {@required this.email,
      @required this.userID,
      @required this.name,
      @required this.password,
      @required this.phoneNum,
      @required this.role});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        email: json['email'] as String,
        userID: json['userID'] as String,
        name: json['name'] as String,
        password: json['password'] as String,
        phoneNum: json['phoneNum'] as String,
        role: json['role'] as String);
  }
}
