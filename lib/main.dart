import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: "MyApp"),
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
  TabBar get _tabBar => TabBar(
        tabs: [
          Tab(child: Text('BERITA TERBARU')),
          Tab(child: Text('PERTANDINGAN HARI INI')),
        ],
        unselectedLabelColor: Colors.black,
        labelColor: Colors.red,
      );

  @override
  Widget build(BuildContext context) {
    Color c;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text('MyApp'),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: ColoredBox(
                color: Color.fromARGB(255, 255, 255, 255),
                child: _tabBar,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
                height: 303,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 1,
                )),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Image.network(
                          "https://pm1.narvii.com/7153/855c97d1e3bb980b576a80c43de3504fb3ffe5e2r1-912-516v2_hq.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 13.0)),
                      Container(
                        child: Center(
                          child: Text(
                            "Costa Mendekat Ke Palmeiras",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 211, 0, 183)),
                        padding: EdgeInsets.only(top: 15.0, left: 5.0),
                        width: 420,
                        child: Text(
                          "Transfer",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      new Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://tse3.mm.bing.net/th?id=OIP.o346cvdBs2NUBIFqdsMCpwHaE-&pid=Api&P=0&w=302&h=203',
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 200,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: 409,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.green, width: 1)),
                                    padding: EdgeInsets.only(top: 30.0),
                                    child: Text(
                                      'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Expanded(
                                child: Container(
                              height: 40,
                              width: 409,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              padding: EdgeInsets.only(top: 10.0, left: 8.0),
                              child: Text(
                                'Barcelona Feb 13, 2021',
                                textAlign: TextAlign.start,
                              ),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://tse3.mm.bing.net/th?id=OIP.o346cvdBs2NUBIFqdsMCpwHaE-&pid=Api&P=0&w=302&h=203',
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 200,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    width: 409,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.green, width: 1)),
                                    padding: EdgeInsets.only(top: 30.0),
                                    child: Text(
                                      'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Expanded(
                                child: Container(
                              height: 40,
                              width: 409,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              padding: EdgeInsets.only(top: 10.0, left: 8.0),
                              child: Text(
                                'Barcelona Feb 13, 2021',
                                textAlign: TextAlign.start,
                              ),
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          )),
    );
  }
}
