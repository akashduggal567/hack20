import 'package:firebase_auth/firebase_auth.dart';
import 'package:infinity/models/user_model.dart';
import 'package:infinity/ui/views/dashboard/dashboard_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home/home_view.dart';

class DashboardView extends StatefulWidget {
  final User user;
  const DashboardView({Key key,@required this.user}) : super(key: key);
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white70);
  List<Widget> _widgetOptions = <Widget>[
    Container(
      child: Text("test"),
    ),
    HomeView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text(User.fromJson(widget.user.toJson()).id.toString()),
                actions: <Widget>[
                  Icon(Icons.person_pin),
                ],
              ),
              body: Container(
//            color: Colors.black,
                child: _widgetOptions.elementAt(_selectedIndex),
              ),
              bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.blue,
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('tab 1'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home'),
                  ),
//              BottomNavigationBarItem(
//                icon: Icon(Icons.work),
//                title: Text('Bookings'),
//              ),
                ],
                currentIndex: _selectedIndex,
//          selectedItemColor: Colors.amber[800],
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white54,
                onTap: _onItemTapped,
              ),
              drawer: Drawer(
                // Add a ListView to the drawer. This ensures the user can scroll
                // through the options in the drawer if there isn't enough vertical
                // space to fit everything.
                child: Container(
                  color: Colors.blue,
                  child: ListView(
                    // Important: Remove any padding from the ListView.
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Container(
                        height: 140,
                        child: DrawerHeader(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Akash Duggal',
                                      style: TextStyle(
                                          color: Color(0xffEEEEEE),
                                          fontSize: 22),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Icon(
                                    Icons.person,
                                    color: Color(0xff00ADB5),
                                    size: 60,
                                  ),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xffEEEEEE),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.help,
                          color: Colors.white,
                        ),
                        title: Text(
                          'FAQs',
                          style: TextStyle(
                              color: Color(0xffEEEEEE),
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.power_settings_new,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Sign Out',
                          style: TextStyle(
                              color: Color(0xffEEEEEE),
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          // Update the state of the app
                          // ...
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        viewModelBuilder: () => DashboardViewModel());
  }
}
