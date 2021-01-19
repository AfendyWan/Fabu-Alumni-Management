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
        appBar: MainAppBarInterface(
          title:
          const Text('News List', style: TextStyle(color: Colors.white)),
        ),
        body: FutureBuilder(
          future: concreteHttpService.getNews(),
          builder:
              (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
            if (snapshot.hasData) {
              List<News> newes = snapshot.data;
              return ListView(
                children: newes
                    .map(
                      (News news) => ListTile(
                    title: Text(news.newsTitle),
                    subtitle: Text(news.newsCategory),
                    onTap: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => newsDetails(
                            news: news,
                          ),
                        )),
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
