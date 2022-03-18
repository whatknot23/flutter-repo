import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: StackAndPositionedDemo(),
    );
  }
}

class StackAndPositionedDemo extends StatefulWidget {
  @override
  _StackAndPositionedDemoState createState() => _StackAndPositionedDemoState();
}

class _StackAndPositionedDemoState extends State<StackAndPositionedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack & Positioned Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 100,
              left: 100,
              height: 250,
              width: 250,
              child: Container(
                color: Colors.green[300],
                child: Text(
                  'Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 60,
              width: 250,
              height: 250,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red[400],
                child: Text(
                  'Red',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 90,
              width: 250,
              height: 250,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.purple[300],
                child: Text(
                  'Purple',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
