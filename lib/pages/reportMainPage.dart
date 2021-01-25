import 'package:flutter/material.dart';
import 'package:mobilesda3/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:mobilesda3/pages/alumniReport.dart';
import 'package:mobilesda3/pages/sponsorReport.dart';

class ReportMainPage extends StatelessWidget with NavigationStates {
 @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
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
        margin: const EdgeInsets.symmetric(),
        child: Image(image: NetworkImage('https://builtsurvey.utm.my/wp-content/uploads/2019/04/fabu.jpg'),)
      ),

      Card(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ReportPage(),
          ));
        } ,
        leading: Icon(Icons.analytics_outlined,color: Colors.blue.shade400),
        title: Text("Alumni Batch Report"),
        subtitle: Text("Report on number of alumni per batch"),
        trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue.shade400),
        ),
      ),

      Card(
        margin: const EdgeInsets.symmetric(),
        child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SponsorReport(),
          ));
        } ,
        leading: Icon(Icons.analytics_outlined,color: Colors.blue.shade400),
        title: Text("Sponsorship Report"),
        subtitle: Text("Report on sponsor amount yearly"),
        trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue.shade400),
       ),
      ),
    ],
  );
  return listView;
}

}