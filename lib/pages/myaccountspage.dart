import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: IconButton(
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: Center(child: Text("+6 07 5557351",  textAlign: TextAlign.center,)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: IconButton(
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 35,0),
              child: Center(child: Text("fabu@utm.my",  textAlign: TextAlign.center,)),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF09C6F9),
            Color(0xFF045DE9),
          ])),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    margin:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          image: NetworkImage(
                              'https://builtsurvey.utm.my/wp-content/uploads/2019/04/fabu.jpg'),
                        ))),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('images/FABU.png'),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'FABU Alumni Management System',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  padding: EdgeInsets.all(10.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
