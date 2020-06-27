import 'package:infinity/app/locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TestViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  String _title = "test";
  String get title => _title;

  Future handleStartUpLogic() async{
//    await _navigationService.navigateTo(Routes.dashboardViewRoute);
  }

}
