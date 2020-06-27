
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'splash_screen_viewmodel.dart';


class SplashScreenView extends StatefulWidget {
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(child: Text(model.title))),
      ),
      viewModelBuilder: () => SplashScreenViewModel(),
      onModelReady: (model) =>     Future.delayed(Duration(seconds: 3),() => {model.handleStartUpLogic()}),
    );
  }
}

