import 'package:flutter/material.dart';
import 'package:mobilesda3/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:mobilesda3/pages/charity_details.dart';
import 'package:mobilesda3/pages/charity_model.dart';
import 'package:mobilesda3/pages/http_service.dart';
import '../pages/concreteHttpService.dart';
import '../pages/mainAppBarInterface.dart';

class CharityMainPage extends MainAppBarInterface with NavigationStates {
  final ConcreteHttpService concreteHttpService = ConcreteHttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBarInterface(
          title: const Text('Charity',
              style: TextStyle(fontSize: 28, color: Colors.white)),
        ),
        body: FutureBuilder(
          future: concreteHttpService.getCharity(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Charity>> snapshot) {
            if (snapshot.hasData) {
              List<Charity> charity = snapshot.data;

              return ListView(
                children: charity
                    .map((Charity charity) => ListTile(
                          title: Text(charity.charityTitle),
                          subtitle: Text(
                            charity.charityID.toString(),
                          ),
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CharityDetail(
                              charity: charity,
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
