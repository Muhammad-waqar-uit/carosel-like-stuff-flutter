// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  var text = [
    ['alt50', '50 tracks - 17 342 fans'],
    ['TikTok Hits', '80 tracks - 130 305 fans']
  ];
  int list = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Carosel'),
        ),
        body: Stack(
          children: [
            // ignore: avoid_unnecessary_containers
            SizedBox(
              width: 500,
              height: 250,
              // ignore: unnecessary_brace_in_string_interps
              child: Image.asset('assets/${number}.jpg'),
            ),
            Positioned(
              bottom: 0,
              // ignore: avoid_unnecessary_containers
              child: Container(
                color: Colors.white.withOpacity(.5),
                width: 500,
                height: 45,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        text[list][0],
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(text[list][1], style: TextStyle(color: Colors.white))
                    ]),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 120,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    number = max(number - 1, 1);
                    list = 0;
                  });
                },
                icon: Icon(
                  Icons.arrow_circle_left,
                  color: Colors.amber,
                ),
              ),
            ),
            Positioned(
              right: 100,
              bottom: 120,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    number = min(number + 1, 2);
                    list = 1;
                  });
                },
                icon: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.amber,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
