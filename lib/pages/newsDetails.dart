import 'package:mobilesda3/pages/news_model.dart';

import '../pages/news_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/mainAppBarInterface.dart';

class newsDetails extends StatelessWidget {
  final News news;

  const newsDetails({@required this.news});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text(news.newsTitle, style: TextStyle(
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
                  title: Text("News Title"),
                  subtitle: Text(news.newsTitle),
                ),
                ListTile(
                  title: Text("News Category"),
                  subtitle: Text(news.newsCategory),
                ),
                ListTile(
                  title: Text("News Article"),
                  subtitle: Text(news.newsArticle),
                ),
                ListTile(
                  title: Text("News Websites"),
                  subtitle: Text("news.newsWebsite"),
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
