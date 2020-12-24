import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewa extends StatefulWidget {
  WebViewa({Key key}) : super(key: key);

  @override
  _WebViewPrevState createState() => _WebViewPrevState();
}

class _WebViewPrevState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebviewScaffold(
          url: "https://sis.kalasalingam.ac.in/login",
          appBar: AppBar(
            title: Text('Student Sis'),
          ),
          withZoom: true,
        ),
      ),
    );
  }
}

////
class WebViewb extends StatefulWidget {
  WebViewb({Key key}) : super(key: key);

  @override
  _WebViewPrevStateb createState() => _WebViewPrevStateb();
}

class _WebViewPrevStateb extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebviewScaffold(
          url: "https://edukare.kalasalingam.ac.in/login",
          appBar: AppBar(
            title: Text('Edu Kare'),
          ),
          withZoom: true,
        ),
      ),
    );
  }
}

///
class WebViewc extends StatefulWidget {
  WebViewc({Key key}) : super(key: key);

  @override
  _WebViewPrevStatec createState() => _WebViewPrevStatec();
}

class _WebViewPrevStatec extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebviewScaffold(
          url: "https://kalasalingam.ac.in/site/#",
          appBar: AppBar(
            title: Text('Campus Site'),
          ),
          withZoom: true,
        ),
      ),
    );
  }
}
