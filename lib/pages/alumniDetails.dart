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
      backgroundColor: Colors.black87,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title:
            Text("Alumni Information", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shadowColor: Colors.black87,
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color(0xFFB0F3F1),
                    Color(0xFFFFCFDF),
                  ])),
                  padding: EdgeInsets.all(16),
                  child: ListTile(
                    leading: Icon(Icons.account_box_rounded ),
                    title: Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      alumni.name,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                    onTap: (){},
                  ),
                ),
              ),
            ),//Name
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shadowColor: Colors.black87,
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB0F3F1),
                        Color(0xFFFFCFDF),
                      ])),
                  padding: EdgeInsets.all(16),
                  child: ListTile(
                    leading: Icon(Icons.email_rounded ),
                    title: Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      alumni.email,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ), //Email
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shadowColor: Colors.black87,
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB0F3F1),
                        Color(0xFFFFCFDF),
                      ])),
                  padding: EdgeInsets.all(16),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      alumni.phoneNum,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ), //Phone
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shadowColor: Colors.black87,
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB0F3F1),
                        Color(0xFFFFCFDF),
                      ])),
                  padding: EdgeInsets.all(16),
                  child: ExpansionTile(
                    leading: Icon(Icons.school_rounded),
                    title: Text(
                      'Education Background',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                    children: <Widget>[
                      ExpansionTile(
                        title: Text(
                          'Diploma',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                          ),
                        ),
                        children: <Widget>[
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Diploma Field"),
                              subtitle: Text(
                                  alumni.alumniFieldOfSpecializationDiploma),
                            ),
                          ),
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Diploma Batch"),
                              subtitle: Text("${alumni.alumniBatchDiploma}"),
                            ),
                          ),
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Diploma Graduate Year"),
                              subtitle:
                              Text("${alumni.alumniGraduateYearDiploma}"),
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          'Degree',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                          ),
                        ),
                        children: <Widget>[
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Bachelor Degree Field"),
                              subtitle: Text(
                                  alumni.alumniFieldOfSpecializationBachelor),
                            ),
                          ),
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Bachelor Degree Batch"),
                              subtitle: Text("${alumni.alumniBatchBachelor}"),
                            ),
                          ),
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title:
                              Text("Alumni Bachelor Degree Graduate Year"),
                              subtitle:
                              Text("${alumni.alumniGraduateYearBachelor}"),
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text(
                          'Master',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                          ),
                        ),
                        children: <Widget>[
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Master Field"),
                              subtitle: Text(
                                  alumni.alumniFieldOfSpecializationMaster),
                            ),
                          ),
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Master Batch"),
                              subtitle: Text("${alumni.alumniBatchMaster}"),
                            ),
                          ),
                          InkWell(
                            child: ListTile(
                              onTap: () {},
                              title: Text("Alumni Master Graduate Year"),
                              subtitle:
                              Text("${alumni.alumniGraduateYearMaster}"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),//Education Background
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shadowColor: Colors.black87,
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB0F3F1),
                        Color(0xFFFFCFDF),
                      ])),
                  padding: EdgeInsets.all(16),
                  child: ListTile(
                    leading: Icon(Icons.hail),
                    title: Text(
                      'Current Job',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      alumni.alumniCurJob,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),//CurrentJob

            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              shadowColor: Colors.black87,
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB0F3F1),
                        Color(0xFFFFCFDF),
                  ])),
                  padding: EdgeInsets.all(16),
                  child: ListTile(
                    leading: Icon(Icons.attribution_rounded ),
                    title: Text(
                      'Professional Status',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      alumni.alumniProfStatus,
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),//Professional Status


          ],
        ),
      ),
    );
  }
}
