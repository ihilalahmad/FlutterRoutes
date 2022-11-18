import 'package:flutter/material.dart';
import 'package:flutter_routing_nav/screens/screen_3.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_2';

  const ScreenTwo({
    Key? key,
  }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['age'].toString()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (() {
                Navigator.pushNamed(context, ScreenThree.id, arguments: {
                  'name': arguments['name'],
                  'age': ['age']
                });
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => ScreenThree()));
              }),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.deepOrange),
                child: Center(
                  child: Text('Screen 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
