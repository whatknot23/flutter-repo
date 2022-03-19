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
    "Accessories",
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
                    titleSpacing: AppBarTheme().titleSpacing,
                    floating: true,
                    pinned: true,
                    toolbarHeight: 330,
                    backgroundColor: Color(0xFFE5E5E5),
                    forceElevated: innerBoxIsScrolled,
                    title: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
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
                              height: 10,
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
                          .map((name) => Tab(
                                icon: name == "Foods"
                                    ? Icon(
                                        Icons.food_bank,
                                      )
                                    : name == "Electronics"
                                        ? Icon(Icons.device_hub)
                                        : name == "Groceries"
                                            ? Icon(Icons.emoji_food_beverage)
                                            : name == "Clothing"
                                                ? Icon(
                                                    Icons.design_services_sharp)
                                                : name == "Furniture"
                                                    ? Icon(Icons.chair)
                                                    : name == "Sports"
                                                        ? Icon(Icons.sports)
                                                        : name == "Lifestyle"
                                                            ? Icon(Icons
                                                                .vaping_rooms_rounded)
                                                            : name ==
                                                                    "Accessories"
                                                                ? Icon(Icons
                                                                    .gamepad)
                                                                : name ==
                                                                        "Beauty"
                                                                    ? Icon(Icons
                                                                        .person)
                                                                    : null,
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
                        slivers: <Widget>[
                          SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.only(top: 0),
                            sliver: SliverFixedExtentList(
                              itemExtent: 200,
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
                                      return name == "Electronics"
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30, right: 30, top: 30),
                                              child: Container(
                                                height: 500,
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
                                                        top: -40,
                                                        child: Image.asset(
                                                          "assets/image.png",
                                                          height: 100,
                                                          width: 100,
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 80,
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
                                                        top: 110,
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
                                                        top: 130,
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
                                            )
                                          : name == "Foods"
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 30),
                                                  child: Container(
                                                    height: 200,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 255, 255, 255),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Stack(
                                                        clipBehavior: Clip.none,
                                                        alignment:
                                                            AlignmentDirectional
                                                                .center,
                                                        children: [
                                                          Positioned(
                                                            top: -40,
                                                            child: Image.asset(
                                                              "assets/food.png",
                                                              height: 120,
                                                              width: 100,
                                                            ),
                                                          ),
                                                          Positioned(
                                                            top: 90,
                                                            child: Text(
                                                              "Favourite Meal",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            top: 110,
                                                            child: Text(
                                                              "tasty treat",
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        106,
                                                                        108,
                                                                        119),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            top: 130,
                                                            child: Text(
                                                              "\$60",
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        56,
                                                                        70,
                                                                        148),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          )
                                                        ]),
                                                  ),
                                                )
                                              : name == "Groceries"
                                                  ? Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30,
                                                              right: 30,
                                                              top: 30),
                                                      child: Container(
                                                        height: 200,
                                                        width: 50,
                                                        decoration: BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    255),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Stack(
                                                            clipBehavior:
                                                                Clip.none,
                                                            alignment:
                                                                AlignmentDirectional
                                                                    .center,
                                                            children: [
                                                              Positioned(
                                                                top: -40,
                                                                child:
                                                                    Image.asset(
                                                                  "assets/grocery.png",
                                                                  height: 120,
                                                                  width: 120,
                                                                ),
                                                              ),
                                                              Positioned(
                                                                top: 120,
                                                                child: Text(
                                                                  "Best Deal",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        22,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                top: 155,
                                                                child: Text(
                                                                  "Any grocery",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            106,
                                                                            108,
                                                                            119),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                top: 180,
                                                                child: Text(
                                                                  "\$50",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            56,
                                                                            70,
                                                                            148),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                                ),
                                                              )
                                                            ]),
                                                      ),
                                                    )
                                                  : name == "Clothing"
                                                      ? Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 30,
                                                                  right: 30,
                                                                  top: 30),
                                                          child: Container(
                                                            height: 200,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        255,
                                                                        255,
                                                                        255),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                            child: Stack(
                                                                clipBehavior:
                                                                    Clip.none,
                                                                alignment:
                                                                    AlignmentDirectional
                                                                        .center,
                                                                children: [
                                                                  Positioned(
                                                                    top: -40,
                                                                    child: Image
                                                                        .asset(
                                                                      "assets/clothing.png",
                                                                      height:
                                                                          120,
                                                                      width:
                                                                          120,
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    top: 120,
                                                                    child: Text(
                                                                      "Favourite Cloth",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            22,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    top: 155,
                                                                    child: Text(
                                                                      "Fashion Today",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            106,
                                                                            108,
                                                                            119),
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    top: 180,
                                                                    child: Text(
                                                                      "\$40",
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            56,
                                                                            70,
                                                                            148),
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  )
                                                                ]),
                                                          ),
                                                        )
                                                      : name == "Furniture"
                                                          ? Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 30,
                                                                      right: 30,
                                                                      top: 30),
                                                              child: Container(
                                                                height: 200,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child: Stack(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .none,
                                                                    alignment:
                                                                        AlignmentDirectional
                                                                            .center,
                                                                    children: [
                                                                      Positioned(
                                                                        top:
                                                                            -40,
                                                                        child: Image
                                                                            .asset(
                                                                          "assets/furniture.png",
                                                                          height:
                                                                              120,
                                                                          width:
                                                                              120,
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        top:
                                                                            120,
                                                                        child:
                                                                            Text(
                                                                          "Comfort and compact",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                22,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        top:
                                                                            155,
                                                                        child:
                                                                            Text(
                                                                          "Sleep. Sit. Sing",
                                                                          style:
                                                                              TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                106,
                                                                                108,
                                                                                119),
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        top:
                                                                            180,
                                                                        child:
                                                                            Text(
                                                                          "\$260",
                                                                          style:
                                                                              TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                56,
                                                                                70,
                                                                                148),
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ]),
                                                              ),
                                                            )
                                                          : name == "Sports"
                                                              ? Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 30,
                                                                      right: 30,
                                                                      top: 30),
                                                                  child:
                                                                      Container(
                                                                    height: 200,
                                                                    width: 50,
                                                                    decoration: BoxDecoration(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        borderRadius:
                                                                            BorderRadius.circular(20)),
                                                                    child: Stack(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .none,
                                                                        alignment:
                                                                            AlignmentDirectional.center,
                                                                        children: [
                                                                          Positioned(
                                                                            top:
                                                                                -40,
                                                                            child:
                                                                                Image.asset(
                                                                              "assets/sports.png",
                                                                              height: 120,
                                                                              width: 120,
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            top:
                                                                                120,
                                                                            child:
                                                                                Text(
                                                                              "Passion Game",
                                                                              style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 22,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            top:
                                                                                155,
                                                                            child:
                                                                                Text(
                                                                              "Live sports",
                                                                              style: TextStyle(
                                                                                color: Color.fromARGB(255, 106, 108, 119),
                                                                                fontWeight: FontWeight.w700,
                                                                                fontSize: 16,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Positioned(
                                                                            top:
                                                                                180,
                                                                            child:
                                                                                Text(
                                                                              "\$500",
                                                                              style: TextStyle(
                                                                                color: Color.fromARGB(255, 56, 70, 148),
                                                                                fontWeight: FontWeight.w700,
                                                                                fontSize: 16,
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ]),
                                                                  ),
                                                                )
                                                              : name ==
                                                                      "Lifestyle"
                                                                  ? Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              30,
                                                                          right:
                                                                              30,
                                                                          top:
                                                                              30),
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            200,
                                                                        width:
                                                                            50,
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                255,
                                                                                255),
                                                                            borderRadius:
                                                                                BorderRadius.circular(20)),
                                                                        child: Stack(
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            alignment: AlignmentDirectional.center,
                                                                            children: [
                                                                              Positioned(
                                                                                top: -40,
                                                                                child: Image.asset(
                                                                                  "assets/lifestyle.png",
                                                                                  height: 120,
                                                                                  width: 120,
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: 120,
                                                                                child: Text(
                                                                                  "Your life your style",
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 22,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: 155,
                                                                                child: Text(
                                                                                  "Get a life",
                                                                                  style: TextStyle(
                                                                                    color: Color.fromARGB(255, 106, 108, 119),
                                                                                    fontWeight: FontWeight.w700,
                                                                                    fontSize: 16,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: 180,
                                                                                child: Text(
                                                                                  "\$1000",
                                                                                  style: TextStyle(
                                                                                    color: Color.fromARGB(255, 56, 70, 148),
                                                                                    fontWeight: FontWeight.w700,
                                                                                    fontSize: 16,
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ]),
                                                                      ),
                                                                    )
                                                                  : name ==
                                                                          "Accessories"
                                                                      ? Padding(
                                                                          padding: const EdgeInsets.only(
                                                                              left: 30,
                                                                              right: 30,
                                                                              top: 30),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                200,
                                                                            width:
                                                                                50,
                                                                            decoration:
                                                                                BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20)),
                                                                            child:
                                                                                Stack(clipBehavior: Clip.none, alignment: AlignmentDirectional.center, children: [
                                                                              Positioned(
                                                                                top: -40,
                                                                                child: Image.asset(
                                                                                  "assets/accessories.png",
                                                                                  height: 120,
                                                                                  width: 120,
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: 120,
                                                                                child: Text(
                                                                                  "All Accessories",
                                                                                  style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 22,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: 155,
                                                                                child: Text(
                                                                                  "Available",
                                                                                  style: TextStyle(
                                                                                    color: Color.fromARGB(255, 106, 108, 119),
                                                                                    fontWeight: FontWeight.w700,
                                                                                    fontSize: 16,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Positioned(
                                                                                top: 180,
                                                                                child: Text(
                                                                                  "\$100",
                                                                                  style: TextStyle(
                                                                                    color: Color.fromARGB(255, 56, 70, 148),
                                                                                    fontWeight: FontWeight.w700,
                                                                                    fontSize: 16,
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ]),
                                                                          ),
                                                                        )
                                                                      : name ==
                                                                              "Beauty"
                                                                          ? Padding(
                                                                              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                                                                              child: Container(
                                                                                height: 200,
                                                                                width: 50,
                                                                                decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20)),
                                                                                child: Stack(clipBehavior: Clip.none, alignment: AlignmentDirectional.center, children: [
                                                                                  Positioned(
                                                                                    top: -40,
                                                                                    child: Image.asset(
                                                                                      "assets/beauty.png",
                                                                                      height: 120,
                                                                                      width: 120,
                                                                                    ),
                                                                                  ),
                                                                                  Positioned(
                                                                                    top: 120,
                                                                                    child: Text(
                                                                                      "Outer You",
                                                                                      style: TextStyle(
                                                                                        color: Colors.black,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 22,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Positioned(
                                                                                    top: 155,
                                                                                    child: Text(
                                                                                      "Inner You",
                                                                                      style: TextStyle(
                                                                                        color: Color.fromARGB(255, 106, 108, 119),
                                                                                        fontWeight: FontWeight.w700,
                                                                                        fontSize: 16,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Positioned(
                                                                                    top: 180,
                                                                                    child: Text(
                                                                                      "\$700",
                                                                                      style: TextStyle(
                                                                                        color: Color.fromARGB(255, 56, 70, 148),
                                                                                        fontWeight: FontWeight.w700,
                                                                                        fontSize: 16,
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                                ]),
                                                                              ),
                                                                            )
                                                                          : Container();
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
