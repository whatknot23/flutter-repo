import './Pages/dashboard.dart';
import './Pages/profile.dart';
import './Pages/reports.dart';
import './Pages/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [
    DashBoard(),
    Profile(),
    Reports(),
    Settings(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBoard();

  Widget materialButton(
    Widget current_Screen,
    int current_Tab,
    double min_Width,
    IconData icon,
    String name,
  ) {
    return MaterialButton(
      onPressed: () {
        setState(() {
          currentScreen = current_Screen;
          currentTab = current_Tab;
        });
      },
      minWidth: MediaQuery.of(context).size.width * min_Width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == current_Tab
                ? Theme.of(context).primaryColor
                : Colors.grey,
          ),
          Text(
            name,
            style: TextStyle(
              color: currentTab == current_Tab
                  ? Theme.of(context).primaryColor
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.qr_code),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: AppBar().preferredSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  materialButton(
                      DashBoard(), 0, 0.25, Icons.dashboard, "DashBoard"),
                  materialButton(Reports(), 1, 0.20, Icons.subscript, "Reports")
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  materialButton(Profile(), 2, 0.20, Icons.portrait, "Profile"),
                  materialButton(
                      Settings(), 3, 0.25, Icons.settings, "Settings"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
