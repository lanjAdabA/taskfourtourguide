import 'package:flutter/material.dart';

import 'cards.dart';

List places = ["place1", "place2", "place3"];
List placesImgs = ["img1", "img2", "img3"];

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
          backgroundColor: Colors.orange[800],
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
                      decoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: const BorderRadius.only(
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
                      padding: EdgeInsets.all(16),
                      child: Container(
                        child:
                            TabBarView(controller: _tabController, children: [
                          ListView(
                              scrollDirection: Axis.horizontal,
                              children: places
                                  .map((e) => cards(
                                        title: e,
                                        images: placesImgs[places.indexOf(e)],
                                      ))
                                  .toList()),
                          ListView(
                              scrollDirection: Axis.horizontal,
                              children: places
                                  .map((e) => cards(
                                        title: e,
                                        images: placesImgs[places.indexOf(e)],
                                      ))
                                  .toList()),
                          ListView(
                              scrollDirection: Axis.horizontal,
                              children: places
                                  .map((e) => cards(
                                        title: e,
                                        images: placesImgs[places.indexOf(e)],
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
