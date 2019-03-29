import 'package:flutter/material.dart';
import 'details.dart';
import 'event_list.dart';
import 'favourite.dart';
import 'settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final title = "Meeting";
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: Scaffold(
        body: SettingsManager(),
        bottomNavigationBar: BottomNavigationBar(
            items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar),
              title: new Text('Sessions')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('My Schedule')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.slidersH,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Settings')),
        ]),
      ),
    );
  }
}

