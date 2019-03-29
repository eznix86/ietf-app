import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SettingsManager extends StatefulWidget {
  @override
  _SettingsManagerState createState() => _SettingsManagerState();
}

class _SettingsManagerState extends State<SettingsManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      body: Container(
       color: Colors.white,
        child: ListView(
          children: <Widget>[
            
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  "Meetings",
                  style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Location"),
                  Row(
                    children: <Widget>[
                      IconButton(icon: new Icon(Icons.remove)),
                      new Text("104"),
                      new IconButton(icon: new Icon(Icons.add)),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  "Calendar",
                  style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Add your schedule to Calendar"),
                  Switch(
                    value: true,
                    onChanged: (value) {

                    },
                    activeTrackColor: Color(0xFF71e7c2),
                    activeColor: Color(0xFF06CC8E),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio(value: 0, groupValue: 1, onChanged: (int value){ }),
                      Text("Google Calendar")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(value: 1, groupValue: 0,  onChanged: (int value){ }),
                      Text("Samsung Calendar")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio(value: 2, groupValue: 0,  onChanged: (int value){ }, activeColor:  Color(0xFF06CC8E),),
                      Text("x Calendar")
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  "Support",
                  style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Report bug / Request a feature"),
                  Icon(Icons.chevron_right)
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Version"),
                  Text("1.0.4.1",  style: TextStyle(
                      color: Color(0xFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontSize: 16))
                ],
              ),
            ),



          ],
        ),

      ),
    );
  }
}
