import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final title = "Meeting";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: EventDescription(),
    );
  }
}

class EventDescription extends StatefulWidget {
  final String title;

  EventDescription({this.title});

  @override
  _EventDescriptionState createState() => _EventDescriptionState();
}

class _EventDescriptionState extends State<EventDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            // Use the FontAwesomeIcons class for the IconData
            icon: new Icon(FontAwesomeIcons.chevronLeft),
            onPressed: () {
              print("Pressed");
            }),
        title: Text("Meetings"),
        backgroundColor: Color(0xFF2689ee),
        elevation: 0,
      ),
      body: DescriptionList(),
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
    );
  }
}

class DescriptionList extends StatefulWidget {
  @override
  _DescriptionListState createState() => _DescriptionListState();
}

class _DescriptionListState extends State<DescriptionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Color(0xFF2689ee)),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.star,
                color: Colors.white,
                size: 32,
              ),
              title: Text(
                "Hackathon Meetup",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.white,
                size: 28,
              ),
              title: Text(
                "pearg",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Privacy Enhancements and Assessments Proposed Research Group",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Open Map");
              },
              leading: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 28,
              ),
              trailing: Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 28,
              ),
              title: Text(
                "Paris",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.access_time,
                color: Colors.white,
                size: 28,
              ),
              title: Text(
                "9:00 AM - 7:00 PM ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 28,
              ),
              title: Text(
                "NOV 14, WEDNESDAY ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.link,
                color: Colors.white,
                size: 28,
              ),
              title: Text(
                "Agenda",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: IconButton(icon: Icon(Icons.star), onPressed: null),
      ),
    );
  }
}
