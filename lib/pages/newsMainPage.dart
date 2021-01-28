import '../pages/newsDetails.dart';
import '../pages/concreteHttpService.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../pages/news_model.dart';
import '../pages/mainAppBarInterface.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class NewsPage extends MainAppBarInterface with NavigationStates {
  final ConcreteHttpService concreteHttpService = ConcreteHttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: MainAppBarInterface(
          title: const Text('News List', style: TextStyle(color: Colors.white)),
        ),
        body: FutureBuilder(
          future: concreteHttpService.getNews(),
          builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
            if (snapshot.hasData) {
              List<News> newes = snapshot.data;
              return ListView(
                children: newes
                    .map(
                      (News news) => Card(
                        shadowColor: Colors.black87,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color(0x00ece9e6),
                            Color(0xFFffffff),
                          ])),
                          padding: EdgeInsets.all(16),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                                  AssetImage('images/newspaper.png'),
                            ),
                            isThreeLine: true,
                            title: Text(
                              news.newsCategory,
                              style: TextStyle(
                                color: Colors.teal.shade900,
                                fontSize: 10.0,
                              ),
                            ),
                            subtitle: Text(
                              news.newsTitle,
                              style: TextStyle(
                                color: Colors.teal.shade900,
                                fontSize: 15.0,
                              ),
                            ),
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => newsDetails(
                                news: news,
                              ),
                            )),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
