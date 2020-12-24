import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:async/async.dart';
import './pages/gpapage.dart';
import 'web.dart';

class App extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text(
          'Kalasalingam App',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Sriracha-Regular.ttf'
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: new SingleChildScrollView(
        padding: new EdgeInsets.all(9.0),
        child: new Center(
            child: new Column(children: <Widget>[
          Card(
            child: Image.asset('assets/app.png'),
          ),
          Card(
            color: Colors.blue,
            margin: EdgeInsets.all(5.0),
            elevation: 0.0,
            child: Container(
              height: 90.0,
              child: InkWell(
                  splashColor: Colors.grey[300],
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WebViewa()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Text(
                      "STUDENT SIS",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Sriracha-Regular.ttf'),
                    ))
                  ])),
            ),
          ),
          Card(
            color: Colors.blue,
            margin: EdgeInsets.all(5.0),
            elevation: 2.0,
            child: Container(
              height: 90.0,
              child: InkWell(
                  splashColor: Colors.grey[300],
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WebViewb()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Text(
                      "EDU   KARE",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Sriracha-Regular.ttf'),
                    ))
                  ])),
            ),
          ),
          Card(
            color: Colors.blue,
            margin: EdgeInsets.all(5.0),
            elevation: 0.0,
            child: Container(
              height: 100.0,
              child: InkWell(
                  splashColor: Colors.grey[300],
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WebViewc()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Text(
                      "CAMPUS  SITE",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Sriracha-Regular.ttf'),
                    ))
                  ])),
            ),
          ),
          Card(
            color: Colors.blue,
            margin: EdgeInsets.all(5.0),
            elevation: 0.0,
            child: Container(
              height: 90.0,
              child: InkWell(
                  splashColor: Colors.grey[300],
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GPA()));
                  },
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Text(
                      "GPA CALCULATOR",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Sriracha-Regular.ttf'),
                    ))
                  ])),
            ),
          ),
        ])),
      ),
    );
  }
}

class MyApp {}
