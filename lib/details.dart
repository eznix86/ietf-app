import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                "Nov 14, Wednesday",
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
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(left: 70),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("Agenda details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),),
                  ),
                  Icon(Icons.share, color: Colors.white,),
                  SizedBox(width: 32,),

                  Icon(Icons.open_in_new, color: Colors.white,),
                  SizedBox(width: 32,),

                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.link,
                color: Colors.white,
                size: 28,
              ),
              title: Text(
                "Slides",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                  fontSize: 16,
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.only(left: 70, bottom: 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("intro-to-ietf",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),),
                  ),
                  Icon(Icons.share, color: Colors.white,),
                  SizedBox(width: 32,),

                  Icon(Icons.open_in_new, color: Colors.white,),
                  SizedBox(width: 32,),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70,  bottom: 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text("how-to-use-ssh",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),),
                  ),
                  Icon(Icons.share, color: Colors.white,),
                  SizedBox(width: 32,),

                  Icon(Icons.open_in_new, color: Colors.white,),
                  SizedBox(width: 32,),

                ],
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
