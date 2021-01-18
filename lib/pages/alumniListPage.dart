import '../pages/alumniDetails.dart';
import '../pages/http_service.dart';
import '../pages/concreteHttpService.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../pages/alumni_model.dart';
import '../pages/mainAppBarInterface.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class AlumniesPage extends MainAppBarInterface with NavigationStates {
  final ConcreteHttpService concreteHttpService = ConcreteHttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBarInterface(
          title:
              const Text('Alumni List', style: TextStyle(color: Colors.white)),
        ),
        body: FutureBuilder(
          future: concreteHttpService.getAlumnies(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Alumni>> snapshot) {
            if (snapshot.hasData) {
              List<Alumni> alumnies = snapshot.data;
              return ListView(
                children: alumnies
                    .map(
                      (Alumni alumni) => ListTile(
                        title: Text(alumni.name),
                        subtitle: Text(alumni.email),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => alumniDetail(
                            alumni: alumni,
                          ),
                        )),
                      ),
                    )
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
