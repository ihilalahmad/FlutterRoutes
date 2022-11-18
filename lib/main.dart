import 'package:flutter/material.dart';
import 'package:flutter_routing_nav/screens/screen_1.dart';
import 'package:flutter_routing_nav/screens/screen_2.dart';
import 'package:flutter_routing_nav/screens/screen_3.dart';

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
        primarySwatch: Colors.blue,
      ),
      initialRoute: ScreenOne.id,
      routes: {
        ScreenOne.id: (context) => ScreenOne(),
        ScreenTwo.id: (context) => ScreenTwo(),
        ScreenThree.id: (context) => ScreenThree()
      },
    );
  }
}
