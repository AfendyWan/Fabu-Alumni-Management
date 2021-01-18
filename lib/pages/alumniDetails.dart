import '../pages/alumni_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/mainAppBarInterface.dart';

class alumniDetail extends StatelessWidget {
  final Alumni alumni;

  const alumniDetail({@required this.alumni});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
          title: Text(alumni.name, style: TextStyle(
              color: Colors.white
          )),
        centerTitle: true,
          backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Full name"),
                  subtitle: Text(alumni.name),
                ),
                ListTile(
                  title: Text("Email"),
                  subtitle: Text(alumni.email),
                ),
                ListTile(
                  title: Text("Alumni Degree"),
                  subtitle: Text(alumni.alumniDegree),
                ),
                ListTile(
                  title: Text("Alumni Batch"),
                  subtitle: Text("${alumni.alumniBatch}"),
                ),
                ListTile(
                  title: Text("Alumni Graduate Year"),
                  subtitle: Text("${alumni.alumniGraduateYear}"),
                ),
                ListTile(
                  title: Text("Current job"),
                  subtitle: Text(alumni.alumniCurJob),
                ),
                ListTile(
                  title: Text("Address 1"),
                  subtitle: Text(alumni.alumniAddress1),
                ),
                ListTile(
                  title: Text("Address 2"),
                  subtitle: Text(alumni.alumniAddress2),
                ),
                ListTile(
                  title: Text("Telephone number"),
                  subtitle: Text(alumni.phone),
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
