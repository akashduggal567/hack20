import 'package:infinity/app/locator.dart';
import 'package:infinity/app/router.gr.dart';
//import 'package:djvicinity/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String _title = "SplashScreen";
  String get title => _title;

  Future handleStartUpLogic() async{
    await _navigationService.navigateTo(Routes.dashboardViewRoute);
  }

}
