import 'package:flutter/material.dart';
//import 'details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//            children: <Widget>[
//
////              DatePicker(),
////              SizedBox(height: 16),
////              EventsLists()
//
//            ],

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override 
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final title = "Meeting";
  final navigatorKey = GlobalKey<NavigatorState>();



  void _showDialog() {
    final context = navigatorKey.currentState.overlay.context;
    final dialog = AlertDialog(
      title: Text("Filter by Group"),
      content: Wrap(
        children: <Widget>[

          FilterChip(
            label: Text("Any"),
            backgroundColor: Colors.transparent ,
//            shape: StadiumBorder(side: BorderSide()),
            selected: true,
            selectedColor: Colors.lightBlueAccent,
            onSelected: (bool value) {print("selected");},
          ),
          SizedBox(width: 8,),
          FilterChip(
            label: Text("ART"),
            backgroundColor: Colors.transparent,
//        shape: StadiumBorder(side: BorderSide()),
            selected: false,
            onSelected: (bool value) {print("selected");},
          ),
          SizedBox(width: 8,),
          FilterChip(
            label: Text("INT"),
            backgroundColor: Colors.transparent,
//        shape: StadiumBorder(side: BorderSide()),
            selected: false,
            onSelected: (bool value) {print("selected");},
          ),
          SizedBox(width: 8,),
          FilterChip(
            label: Text("OPS"),
            backgroundColor: Colors.transparent,
//        shape: StadiumBorder(side: BorderSide()),
            selected: false,
            onSelected: (bool value) {print("selected");},
          ),
          SizedBox(width: 8,),
          FilterChip(
            label: Text("SEC"),
            backgroundColor: Colors.transparent,
//        shape: StadiumBorder(side: BorderSide()),
            selected: false,
            onSelected: (bool value) {print("selected");},
          ),
          SizedBox(width: 8,),
          FilterChip(
            label: Text("TSV"),
            backgroundColor: Colors.transparent,
//        shape: StadiumBorder(side: BorderSide()),
            selected: false,
            onSelected: (bool value) {print("selected");},
          ),

        ],
      ),
    );
    showDialog(context: context, builder: (x) => dialog);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
//      home: EventDescription(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: IconButton(
                onPressed: _showDialog,
                icon: Icon(Icons.filter_list, color: Colors.black87),
              ),
            )
          ],
          title: Text(
            "Meetings",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              DatePicker(),
              SizedBox(
                height: 16,
              ),
              Expanded(
                //color: Colors.white,
                child: EventsLists(),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar),
              title: new Text('Sessions')),
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

class EventsLists extends StatefulWidget {
  @override
  _EventsListsState createState() => _EventsListsState();
}

class _EventsListsState extends State<EventsLists> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              index.toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
      separatorBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              position.toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
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
