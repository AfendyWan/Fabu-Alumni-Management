import 'package:bloc/bloc.dart';
import '../pages/reportMainPage.dart';
import '../pages/myaccountspage.dart';
import '../pages/newsMainPage.dart';
import '../pages/alumniListPage.dart';
import '../pages/events.dart';
import '../pages/charity.dart';
import '../pages/profile.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAlumniesClickedEvent,
  MyNewsClickedEvent,
  MyEventsClickedEvent,
  MyCharityClickedEvent,
  MyReportsClickedEvent,
  ProfileClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    if (event == NavigationEvents.HomePageClickedEvent) 
      {
        yield MyAccountsPage();
      }
      else if (event == NavigationEvents.ProfileClickedEvent)
     {
        yield ProfilePage();
     }
     else if (event == NavigationEvents.MyAlumniesClickedEvent)
     {
        yield AlumniesPage();
     }
      else if (event == NavigationEvents.MyNewsClickedEvent)
      {
        yield NewsPage();
      }
      else if(event == NavigationEvents.MyEventsClickedEvent)
      {
        yield EventMainPage();
      }
      else if (event == NavigationEvents.MyCharityClickedEvent)
      {
        yield CharityMainPage();
      }
      else if (event == NavigationEvents.MyReportsClickedEvent)
      {
        yield ReportMainPage();
      }

    
  }
}
