import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavouriteManager extends StatefulWidget {
  @override
  _FavouriteManagerState createState() => _FavouriteManagerState();
}

class _FavouriteManagerState extends State<FavouriteManager> {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,

          title: Text(
            "My Schedule",
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        ),
        body: Container(
          color: Colors.white,
         child: FavouriteList(),
        ),
      ),
    );
  }
}


class FavouriteList extends StatefulWidget {
  @override
  _FavouriteListState createState() => _FavouriteListState();
}

class _FavouriteListState extends State<FavouriteList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Card(
            color: Color(0xFF2689EE),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16,),
                      Text("10:00 AM - 7: 00 PM", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),),
                      SizedBox(height: 10,),
                      Text(
                        "TCP Maintenance and Minor Extensions",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),),


                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Color(0xFF06CCCD),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16,),
                      Text("10:00 AM - 7: 00 PM", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),),
                      SizedBox(height: 10,),
                      Text(
                        "TCP Maintenance and Minor Extensions Extensions Extensions",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),),


                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Color(0xFF06CC8E),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16,),
                      Text("10:00 AM - 7: 00 PM", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),),
                      SizedBox(height: 10,),
                      Text(
                        "TCP Maintenance and Minor Extensions",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),),


                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Color(0xFF795FF4),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 16,),
                      Text("10:00 AM - 7: 00 PM", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),),
                      SizedBox(height: 10,),
                      Text(
                        "TCP Maintenance and Minor Extensions",
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )
                    ],
                  ),),


                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "MON",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  color: Color(0xFFFF5A5E),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "11",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: new BoxDecoration(
                  color: Color(0xFFFF5A5E),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "TUE",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "12",
                    style: TextStyle(color: Color(0xFF9C9C9C), fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
//              Container(
//                height: 5,
//                width: 5,
//                decoration: new BoxDecoration(
//                  color: Colors.red,
//                  shape: BoxShape.circle,
//                ),
//              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "WED",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  color: Color(0xFF795FF4),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "13",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: new BoxDecoration(
                  color: Color(0xFF795FF4),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "THU",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  color: Color(0xFF06CC8E),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "14",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: new BoxDecoration(
                  color: Color(0xFF06CC8E),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "FRI",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  color: Color(0xFF06CCCD),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "15",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: new BoxDecoration(
                  color: Color(0xFF06CCCD),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "SAT",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  color: Color(0xFF2689EE),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "16",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: new BoxDecoration(
                  color: Color(0xFF2689EE),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "SUN",
                style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              Container(
                height: 25,
                width: 25,
                decoration: new BoxDecoration(
                  color: Color(0xFF173F71),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "16",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: 5,
                decoration: new BoxDecoration(
                  color: Color(0xFF173F71),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
