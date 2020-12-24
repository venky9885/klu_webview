import 'package:flutter/material.dart';
import 'dart:async';
import 'gpa_calc.dart';

class GPA extends StatefulWidget {
  @override
  GPAState createState() => new GPAState();
}

class GPAState extends State<GPA> {
  TextEditingController controller = new TextEditingController();
  int n;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("GPA Calculator"),
          backgroundColor: Colors.blueAccent),
      backgroundColor: Colors.blue[100],
      body: new Container(
        decoration: new BoxDecoration(
            border: new Border.all(color: Colors.transparent, width: 25.0),
            color: Colors.transparent),
        child: new ListView(
          children: <Widget>[
            new TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: new InputDecoration(
                  fillColor: Colors.blueAccent,
                  hintText: "Enter Number of Subjects to Calculate ",
                  hintStyle: new TextStyle(color: Colors.black54),
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              controller: controller,
              onChanged: (String str) {
                setState(() {
                  if (controller.text == "") n = 0;
                  n = int.parse(controller.text);
                });
              },
            ),
            new IconButton(
              icon: new Icon(Icons.check_circle),
              onPressed: () {
                if (n is int && n < 50) {
                  int pass = n;
                  n = 0;
                  controller.text = "";
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new GPAcalc(pass)));
                } else {
                  controller.text = "";
                  alert();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Future<Null> alert() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Please enter correct'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You Entered Wrong.'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Try again'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
