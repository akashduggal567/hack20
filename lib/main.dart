import 'package:flutter/material.dart';
import 'package:infinity/ui/views/splashscreen/splash_screen_view.dart';
import 'package:infinity/ui/views/test/test_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';
import 'app/router.gr.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreenView(),
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}

