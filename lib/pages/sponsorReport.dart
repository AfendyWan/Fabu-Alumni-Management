import 'package:flutter/material.dart';

class SponsorReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.white, 
  ),
        title: Text('Sponsorship Report',style: TextStyle(
              color: Colors.white
      )),
      centerTitle: true,
      backgroundColor: Colors.grey[900],
      ),
      body: Center(child: Text ('report here'),
      ),
    );
  }
}
