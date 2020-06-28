import 'package:infinity/app/locator.dart';
import 'package:infinity/services/authentication_service.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel{
  AuthenticationService _authenticationService = locator<AuthenticationService>();

  Future signOut() async{
    var result = await _authenticationService.logOut();
    print(result);
  }

}