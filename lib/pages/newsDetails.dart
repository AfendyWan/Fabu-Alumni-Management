import 'package:mobilesda3/pages/news_model.dart';
import 'package:url_launcher/url_launcher.dart';
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
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF0D324D),
            Color(0xFF7F5A83),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text("News", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                        Color(0x00380036),
                        Color(0xFF0CBABA),
                      ])),
                      padding: EdgeInsets.all(16),
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Text(
                            news.newsTitle,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        subtitle: Text(news.newsCategory),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                        Color(0x00380036),
                        Color(0xFF0CBABA),
                      ])),
                      padding: EdgeInsets.all(16),
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                          child: Text(
                            "News Article",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 10.0,
                              color: Colors.black87,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                        subtitle: Text(
                          news.newsArticle,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black87,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                        Color(0x00380036),
                        Color(0xFF0CBABA),
                      ])),
                      padding: EdgeInsets.all(16),
                      child: ListTile(
                        leading: Icon(Icons.language_rounded),
                        title: Text(
                          "News Website",
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black87,
                          ),
                        ),
                        subtitle: Text(
                          news.newsWebsite,
                          style: TextStyle(
                            fontSize: 15.0,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(0, 0, 139, 1),
                            letterSpacing: 1.5,
                          ),
                        ),
                        onTap: () => launch(news.newsWebsite),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
