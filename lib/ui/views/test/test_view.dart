
import 'package:flutter/material.dart';
import 'package:infinity/ui/views/test/test_viewModel.dart';
import 'package:stacked/stacked.dart';


class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
            color: Colors.white,
            child: Center(child: Text(model.title))),
      ),
      viewModelBuilder: () => TestViewModel(),
      onModelReady: (model) =>     Future.delayed(Duration(seconds: 3),() => {model.handleStartUpLogic()}),
    );
  }
}

