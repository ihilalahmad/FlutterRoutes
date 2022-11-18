import 'package:flutter/material.dart';
import 'package:flutter_routing_nav/screens/screen_2.dart';

class ScreenOne extends StatefulWidget {
  static const String id = 'screen_1';

  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (() {
                Navigator.pushNamed(context, ScreenTwo.id, arguments: {
                  'name': 'Hilal Ahmad',
                  'age': 26
                });
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenTwo(
                //       name: 'Hilal Ahmad',
                //       age: 28,
                //     )));
              }),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.deepOrange),
                child: Center(
                  child: Text('Screen 1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
