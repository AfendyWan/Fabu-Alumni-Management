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
        backgroundColor: Colors.blue[100],
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
                      (Alumni alumni) => Card(
                        shadowColor: Colors.black87,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0x00380036),
                            Color(0xFF0CBABA),
                          ])),
                          padding: EdgeInsets.all(16),
                          child: ListTile(
                            title: Text(alumni.name),
                            subtitle: Text(alumni.email),
                            leading: Icon(Icons.account_circle),
                            trailing: Icon(Icons.arrow_forward_ios),
                            dense: false,
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => alumniDetail(
                                alumni: alumni,
                              ),
                            )),
                          ),
                        ),
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
