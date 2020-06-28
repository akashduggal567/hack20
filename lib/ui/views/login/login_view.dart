import 'package:flutter/material.dart';
import 'package:infinity/ui/views/login/login_viewModel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: Text("Title"),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown,
                  child: Text("LOGO"),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(bottom: 4),
                  child: RaisedButton(
                    color: Colors.black,
                    disabledColor: Colors.transparent,
                    splashColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      model.signInUser()
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 25,
                            height: 25,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Container(
                              child: Text('Login as Guest',
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xffEEEEEE))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
