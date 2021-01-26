import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'profile_model.dart';
import 'http_service.dart';

class ProfileDetail extends StatelessWidget {
  final Profile profile;

  ProfileDetail({@required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(profile.name),
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Name"),
                  subtitle: Text(profile.name),
                ),
                ListTile(
                  title: Text("User ID"),
                  subtitle: Text(profile.userID),
                ),
                ListTile(
                  title: Text("Role"),
                  subtitle: Text(profile.role),
                ),
                ListTile(
                  title: Text("E-Mail"),
                  subtitle: Text(profile.email),
                ),
                ListTile(
                  title: Text("Phone Number"),
                  subtitle: Text(profile.phoneNum),
                ),
                ListTile(
                  title: Text("Password"),
                  subtitle: Text(profile.password),
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
