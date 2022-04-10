import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  Add({Key? key}) : super(key: key);

  int _initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: _initialIndex,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: "A",
            ),
            Tab(
              text: "B",
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
