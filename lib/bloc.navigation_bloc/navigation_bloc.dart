import 'package:bloc/bloc.dart';
import '../pages/reportMainPage.dart';
import '../pages/myaccountspage.dart';
import '../pages/newsMainPage.dart';
import '../pages/alumniListPage.dart';
import '../pages/homepage.dart';
import '../pages/events.dart';
import '../pages/charity.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAlumniesClickedEvent,
  MyNewsClickedEvent,
  MyEventsClickedEvent,
  MyCharityClickedEvent,
  MyReportsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAlumniesClickedEvent:
        yield AlumniesPage();
        break;
      case NavigationEvents.MyNewsClickedEvent:
        yield NewsPage();
        break;
      case NavigationEvents.MyEventsClickedEvent:
        yield EventMainPage();
        break;
      case NavigationEvents.MyCharityClickedEvent:
        yield CharityMainPage();
        break;
      case NavigationEvents.MyReportsClickedEvent:
        yield ReportMainPage();
        break;

    }
  }
}
