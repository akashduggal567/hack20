import 'package:firebase_auth/firebase_auth.dart';
import 'package:infinity/app/locator.dart';
import 'package:infinity/app/router.gr.dart';
//import 'package:djvicinity/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:infinity/models/user_model.dart';
import 'package:infinity/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService = locator<AuthenticationService>();

  String _title = "SplashScreen";
  String get title => _title;

  Future handleStartUpLogic() async{
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();

    if(hasLoggedInUser){
      var currentUser = await FirebaseAuth.instance.currentUser();
      User user = User(id: currentUser.uid);
      await _navigationService.clearStackAndShow(Routes.dashboardViewRoute, arguments: DashboardViewArguments(user: user));
    }
    else{
      _navigationService.navigateTo(Routes.loginViewRoute);
    }
  }

}
