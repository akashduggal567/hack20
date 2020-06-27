import 'package:auto_route/auto_route_annotations.dart';
import 'package:infinity/ui/views/dashboard/dashboard_view.dart';
import 'package:infinity/ui/views/dashboard/home/home_view.dart';

import 'package:infinity/ui/views/splashscreen/splash_screen_view.dart';
import 'package:infinity/ui/views/test/test_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashScreenView splashScreenViewRoute;
  HomeView homeViewRoute;
  DashboardView dashboardViewRoute;
  TestView testViewRoute;


}