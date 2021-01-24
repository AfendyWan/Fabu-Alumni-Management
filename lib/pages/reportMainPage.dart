import 'package:flutter/material.dart';
import 'package:mobilesda3/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:mobilesda3/pages/alumniReport.dart';
import 'package:mobilesda3/pages/sponsorReport.dart';

class ReportMainPage extends StatelessWidget with NavigationStates {
 @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      iconTheme: IconThemeData(
        color: Colors.white, 
  ),
      title: Text('Report', style: TextStyle(
              color: Colors.white
      )),
      centerTitle: true,
      backgroundColor: Colors.grey[900],
    ),
    body: getListView(context),
  );
  }
Widget getListView(BuildContext context){
  var listView = ListView(
    children: <Widget> [
      Card(
        child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ReportPage(),
          ));
        } ,
        leading: Icon(Icons.analytics_outlined),
        title: Text("Alumni Batch Report"),
        subtitle: Text("Report on number of alumni per batch"),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),

      Card(
        child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SponsorReport(),
          ));
        } ,
        leading: Icon(Icons.analytics_outlined),
        title: Text("Sponsorship Report"),
        subtitle: Text("Report on amount and sponsors yearly"),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
       ),
      ),
    ],
  );
  return listView;
}

}