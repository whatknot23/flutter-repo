// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  MyAds({Key? key}) : super(key: key);
  final List<String> _type = ["My Ads", "My Favourite"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  pinned: true,
                  centerTitle: true,
                  title: Text(
                    "My App",
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  bottom: TabBar(
                      labelColor: Colors.black,
                      tabs: _type
                          .map((_) => Tab(
                                icon: _ == "My Ads"
                                    ? Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.black,
                                      )
                                    : Icon(
                                        Icons.favorite_outline,
                                        color: Colors.black,
                                      ),
                                text: _,
                              ))
                          .toList()),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: _type.map((name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return name == "My Ads"
                        ? Material(
                            color: Color.fromARGB(255, 245, 245, 245),
                            child: CustomScrollView(
                              key: PageStorageKey<String>(name),
                              slivers: <Widget>[
                                SliverOverlapInjector(
                                  handle: NestedScrollView
                                      .sliverOverlapAbsorberHandleFor(context),
                                ),
                                SliverPadding(
                                  padding: const EdgeInsets.all(8.0),
                                  sliver: SliverFixedExtentList(
                                    itemExtent: 250.0,
                                    delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                        return GridView.builder(
                                          physics: const ScrollPhysics(),
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                          ),
                                          itemCount: 2,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20, right: 20, top: 20),
                                              child: Container(
                                                height: 250,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Stack(
                                                    clipBehavior: Clip.none,
                                                    alignment:
                                                        AlignmentDirectional
                                                            .center,
                                                    children: [
                                                      Positioned(
                                                        top: -30,
                                                        child: Image.asset(
                                                          "assets/image.png",
                                                          height: 100,
                                                          width: 100,
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 90,
                                                        child: Text(
                                                          "Apple Watch",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 18,
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 120,
                                                        child: Text(
                                                          "Series 6. Red",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    106,
                                                                    108,
                                                                    119),
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 150,
                                                        child: Text(
                                                          "\$360",
                                                          style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    56,
                                                                    70,
                                                                    148),
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
                                      childCount: 1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Material(
                            color: Color.fromARGB(255, 245, 245, 245),
                            child: ListView.builder(
                                itemCount: _type.length,
                                itemBuilder: (context, index) {
                                  return SafeArea(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 10),
                                      child: ListTile(
                                        tileColor: Colors.white,
                                        leading: Image.asset(
                                          "assets/image.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                        title: Text("Apple Watch",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                            )),
                                        subtitle: Text(
                                          "Series 6. Red",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 106, 108, 119),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                        trailing: Text(
                                          "\$360",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 56, 70, 148),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
