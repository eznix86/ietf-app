import 'package:flutter/material.dart';
//import 'details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = "Meeting";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
//      home: EventDescription(),
      home: Scaffold(

        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar), title: new Text('Sessions')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Favourite')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.slidersH,
                  color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Settings')),
        ]),
      ),

    );
  }
}
