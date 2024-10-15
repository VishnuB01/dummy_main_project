import 'package:demo1/card2.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
          elevation: 2,
          backgroundColor: const Color.fromARGB(200, 104, 58, 183),

        ),
        body: HomecolumnWidget(),
      ),
    );
  }
}
