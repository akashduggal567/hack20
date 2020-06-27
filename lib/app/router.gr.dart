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

abstract class Routes {
  static const splashScreenViewRoute = '/';
  static const homeViewRoute = '/home-view-route';
  static const dashboardViewRoute = '/dashboard-view-route';
  static const all = {
    splashScreenViewRoute,
    homeViewRoute,
    dashboardViewRoute,
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
        return MaterialPageRoute<dynamic>(
          builder: (context) => DashboardView(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
