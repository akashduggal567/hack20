// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:infinity/ui/views/splashscreen/splash_screen_view.dart';
import 'package:infinity/ui/views/dashboard/home/home_view.dart';
import 'package:infinity/ui/views/dashboard/dashboard_view.dart';
import 'package:infinity/models/user_model.dart';
import 'package:infinity/ui/views/login/login_view.dart';
import 'package:infinity/ui/views/test/test_view.dart';

abstract class Routes {
  static const splashScreenViewRoute = '/';
  static const homeViewRoute = '/home-view-route';
  static const dashboardViewRoute = '/dashboard-view-route';
  static const loginViewRoute = '/login-view-route';
  static const testViewRoute = '/test-view-route';
  static const all = {
    splashScreenViewRoute,
    homeViewRoute,
    dashboardViewRoute,
    loginViewRoute,
    testViewRoute,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreenViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreenView(),
          settings: settings,
        );
      case Routes.homeViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case Routes.dashboardViewRoute:
        if (hasInvalidArgs<DashboardViewArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<DashboardViewArguments>(args);
        }
        final typedArgs = args as DashboardViewArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) =>
              DashboardView(key: typedArgs.key, user: typedArgs.user),
          settings: settings,
        );
      case Routes.loginViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginView(),
          settings: settings,
        );
      case Routes.testViewRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => TestView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//DashboardView arguments holder class
class DashboardViewArguments {
  final Key key;
  final User user;
  DashboardViewArguments({this.key, @required this.user});
}
