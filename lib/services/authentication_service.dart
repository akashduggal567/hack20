import 'package:infinity/app/locator.dart';
import 'package:infinity/app/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

@lazySingleton
class AuthenticationService {
  final NavigationService _navigationService = locator<NavigationService>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  Future signInAnonymously() async{
    try {
      var authResult = await _firebaseAuth.signInAnonymously();
      return authResult != null;
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }


}
