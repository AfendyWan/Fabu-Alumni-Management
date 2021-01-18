import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'charity_model.dart';
import 'http_service.dart';

class CharityDetail extends StatelessWidget {
  final Charity charity;

  CharityDetail({@required this.charity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(charity.charityTitle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Title"),
                  subtitle: Text(charity.charityTitle),
                ),
                ListTile(
                  title: Text("Description"),
                  subtitle: Text(charity.charityDescription),
                ),
                ListTile(
                  title: Text("Target Amount"),
                  subtitle: Text("${charity.charityTargetAmt}"),
                ),
                ListTile(
                  title: Text("Gathered Amount"),
                  subtitle: Text("${charity.charityGatheredAmt}"),
                ),
                ListTile(
                  title: Text("Dateline"),
                  subtitle: Text(charity.charityDateline),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
