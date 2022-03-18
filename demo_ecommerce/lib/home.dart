// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List<String> _categories = [
    "Foods",
    "Electronics",
    "Groceries",
    "Clothing",
    "Furniture",
    "Sports",
    "Lifestyle",
    "Accesories",
    "Beauty",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _categories.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                    floating: true,
                    pinned: true,
                    toolbarHeight: 250,
                    backgroundColor: Color(0xFFE5E5E5),
                    forceElevated: innerBoxIsScrolled,
                    title: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Nayeem!",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 36,
                                color: Color(0xFF000000),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Let's get something?",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xFF4F4C4C),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 100,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 220,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "40% off During \nCovid-19",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset(
                                              "assets/fruits-and-vegetables 1.png",
                                              height: 40,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                      height: 100,
                                      width: 220,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "40% off During \nCovid-19",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Image.asset(
                                                  "assets/fruits-and-vegetables 1.png",
                                                  height: 40,
                                                ),
                                              ),
                                            ]),
                                      )),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Top Categories",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text("View All",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 201, 94, 7),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    bottom: TabBar(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      indicatorPadding: EdgeInsets.only(top: 5, bottom: 5),
                      isScrollable: true,
                      unselectedLabelColor: Color.fromARGB(197, 63, 57, 57),
                      indicator: BoxDecoration(
                          color: Color.fromARGB(255, 94, 93, 93),
                          borderRadius: BorderRadius.circular(20)),
                      tabs: _categories
                          .map((String name) => Tab(
                                text: name,
                              ))
                          .toList(),
                    )),
              ),
            ];
          },
          body: Material(
            color: Color(0xFFE5E5E5),
            child: TabBarView(
              // These are the contents of the tab views, below the tabs.
              children: _categories.map((String name) {
                return SafeArea(
                  child: Builder(
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        key: PageStorageKey<String>(name),
                        slivers: <Widget>[
                          SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            sliver: SliverFixedExtentList(
                              itemExtent: 300,
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  return GridView.builder(
                                    physics: const ScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    itemCount: 2,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 30, top: 30),
                                        child: Container(
                                          height: 200,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Stack(
                                              clipBehavior: Clip.none,
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: [
                                                Positioned(
                                                  top: -30,
                                                  child: Image.asset(
                                                    "assets/image.png",
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 120,
                                                  child: Text(
                                                    "Apple Watch",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 155,
                                                  child: Text(
                                                    "Series 6. Red",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 106, 108, 119),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 180,
                                                  child: Text(
                                                    "\$360",
                                                    style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 56, 70, 148),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                )
                                              ]),
                                        ),
                                      );
                                    },
                                  );
                                },
                                childCount: 6,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
