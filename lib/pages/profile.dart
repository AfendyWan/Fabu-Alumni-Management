import 'package:flutter/material.dart';
import 'package:mobilesda3/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:mobilesda3/pages/profile_details.dart';
import 'package:mobilesda3/pages/profile_model.dart';
import 'package:mobilesda3/pages/http_service.dart';
import '../pages/concreteHttpService.dart';
import '../pages/mainAppBarInterface.dart';

class ProfilePage extends MainAppBarInterface with NavigationStates {
  final ConcreteHttpService concreteHttpService = ConcreteHttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: MainAppBarInterface(
          title: const Text('Profile',
              style: TextStyle(fontSize: 28, color: Colors.white)),
        ),
        body: FutureBuilder(
          future: concreteHttpService.getProfile(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Profile>> snapshot) {
            if (snapshot.hasData) {
              List<Profile> profile = snapshot.data;

              return ListView(
                children: profile
                    .map((Profile profile) => Card(
                            child: ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text(profile.name),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 35.0),
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileDetail(
                              profile: profile,
                            ),
                          )),
                        )))
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
