import 'package:firebase_auth/firebase_auth.dart';
import 'package:infinity/app/locator.dart';
import 'package:flutter/material.dart';
import 'package:infinity/models/user_model.dart';
import 'package:infinity/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/router.gr.dart';
import '../../../app/router.gr.dart';

class TestViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService = locator<AuthenticationService>();


  String _title = "test";
  String get title => _title;

  Future handleStartUpLogic() async{
    await _navigationService.navigateTo(Routes.dashboardViewRoute);
  }

  Future signInUser() async{
    var result  = await _authenticationService.signInAnonymously();

    if(result is bool){

      if(result){
        print(result);
        var currentUser = await FirebaseAuth.instance.currentUser();
        User user = User(id: currentUser.uid);
        await _navigationService.clearStackAndShow(Routes.dashboardViewRoute, arguments: DashboardViewArguments(user: user));
      }

    }
  }

  Future navigateToDashboard() async{
    await _navigationService.navigateTo(Routes.dashboardViewRoute);
  }
}
