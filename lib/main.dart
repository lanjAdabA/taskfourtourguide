import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
          children: [
            Container(
                height: 350,
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
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
