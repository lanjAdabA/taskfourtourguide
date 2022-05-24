// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

import 'cards.dart';

List<Map<String, dynamic>> popular_list = [
  {
    "title": "moirang",
    "rating": 4,
    "placesImgs": "img1.jpg",
  },
  {
    "title": "sendra",
    "rating": 2,
    "placesImgs": "img2.jpg",
  },
  {
    "title": "loktak",
    "rating": 3,
    "placesImgs": "img3.jpg",
  },
];

List recommended_list = [
  {
    "title": "loktak",
    "rating": 4,
    "placesImgs": "img1.jpg",
  },
  {
    "title": "sendra",
    "rating": 2,
    "placesImgs": "img2.jpg",
  },
  {
    "title": "moirang",
    "rating": 3,
    "placesImgs": "img3.jpg",
  },
];
List costeffective_list = [
  {
    "title": "loktak",
    "rating": 4,
    "placesImgs": "img1.jpg",
  },
  {
    "title": "sendra",
    "rating": 2,
    "placesImgs": "img2.jpg",
  },
  {
    "title": "moirang",
    "rating": 3,
    "placesImgs": "img3.jpg",
  },
];

/* List places = ["place1", "place2", "place3"];
List rating = ["rating1", "rating2", "rating3"];

List placesImgs = ["img1", "img2", "img3"];

 */
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(Icons.menu_rounded),
          actions: const [
            Icon(
              Icons.account_circle_rounded,
              color: Colors.black87,
              size: 50,
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
          ],
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                      height: 478,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.red, Colors.yellow]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                              "Where would you like to go?",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 60,
                    child: SizedBox(
                      height: 30,
                      width: double.maxFinite,
                      child: TabBar(
                          labelColor: Colors.blue,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.grey,
                          controller: _tabController,
                          tabs: const [
                            Tab(
                              text: "Popular",
                            ),
                            Tab(
                              text: "Recomended",
                            ),
                            Tab(text: "Cost_Effective")
                          ]),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child:
                            TabBarView(controller: _tabController, children: [
                          ListView(
                              scrollDirection: Axis.horizontal,
                              children: popular_list
                                  .map((e) => Cards(
                                        title: e['title'],
                                        rating: e["rating"],
                                        images: e['placesImgs'],
                                      ))
                                  .toList()),
                          ListView(
                              scrollDirection: Axis.horizontal,
                              children: recommended_list
                                  .map((e) => Cards(
                                        title: e["title"],
                                        rating: e["rating"],
                                        images: e["placesImgs"],
                                      ))
                                  .toList()),
                          ListView(
                              scrollDirection: Axis.horizontal,
                              children: costeffective_list
                                  .map((e) => Cards(
                                        title: e["title"],
                                        rating: e["rating"],
                                        images: e["placesImgs"],
                                      ))
                                  .toList()),

                          /* Text(
                            "data1",
                            style: TextStyle(fontSize: 100),
                          ),
                          Text("data2", style: TextStyle(fontSize: 100)),
                          Text("data3", style: TextStyle(fontSize: 100)) */
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
