import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  List<String> items = ['item1', 'item2', 'item3', 'item4'];
  String? selectedItem = 'item1';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.indigo[50],
            body: Form(
                child: SingleChildScrollView(
                    key: _formKey,
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Row(children: [
                          Container(
                              margin: EdgeInsets.only(left: 200, top: 20),
                              child: Text('Product',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)))
                        ])),
                        Container(
                            child: Row(
                          children: <Widget>[
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 200, top: 30),
                              child: DropdownButton<String>(
                                hint: Text('Filters'),
                                value: selectedItem,
                                items: items
                                    .map((items) => DropdownMenuItem<String>(
                                          value: items,
                                          child: Text(items,
                                              style: TextStyle(fontSize: 24)),
                                        ))
                                    .toList(),
                                onChanged: (item) =>
                                    setState(() => {selectedItem = item}),
                              ),
                            ),
                            Container(
                              width: 300,
                              margin: EdgeInsets.only(left: 100, top: 30),
                              child: Expanded(
                                  child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(),
                                  hintText: 'Search...',
                                ),
                              )),
                            ),
                          ],
                        )),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  color: Colors.white,
                                  height: 550,
                                  margin: EdgeInsets.only(left: 200, top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Image.asset(
                                        '01.jpg',
                                        height: 400,
                                      )),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 20),
                                        child: Image.asset(
                                          '5-stars-icon.png',
                                          width: 100,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: TextButton(
                                              child: Text("Man's Jacket"),
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                primary: Colors.black,
                                              ))),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text('Solid Denim Jacket',
                                              style: TextStyle(
                                                  color: Colors.grey))),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('\$26.00       ',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          100, 149, 237, 1.0))),
                                            ),
                                            Container(
                                              child: Text(
                                                '\$35.00',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(left: 50, top: 20),
                                  color: Colors.white,
                                  height: 550,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Image.asset(
                                        '02.jpg',
                                        height: 400,
                                      )),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 20),
                                        child: Image.asset(
                                          '5-stars-icon.png',
                                          width: 100,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: TextButton(
                                              child: Text("Fido Dido"),
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                primary: Colors.black,
                                              ))),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text(
                                              'Solid Polo Collar T-shirt',
                                              style: TextStyle(
                                                  color: Colors.grey))),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('\$55.00       ',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          100, 149, 237, 1.0))),
                                            ),
                                            Container(
                                              child: Text(
                                                '\$62.00',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(left: 50, top: 20),
                                  color: Colors.white,
                                  height: 550,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          child: Image.asset(
                                        '03.jpg',
                                        height: 400,
                                      )),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 20),
                                        child: Image.asset(
                                          '5-stars-icon.png',
                                          width: 100,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: TextButton(
                                              child: Text("Wonder Woman"),
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontSize: 30,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                primary: Colors.black,
                                              ))),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text(
                                              'Woman Gray Round T-shirt',
                                              style: TextStyle(
                                                  color: Colors.grey))),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('\$45.00       ',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          100, 149, 237, 1.0))),
                                            ),
                                            Container(
                                              child: Text(
                                                '\$52.00',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    )))));
  }
}
//