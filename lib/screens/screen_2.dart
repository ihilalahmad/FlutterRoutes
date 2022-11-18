import 'package:flutter/material.dart';
import 'package:flutter_routing_nav/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;

  ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (() {
                Navigator.pushNamed(
                  context,
                  RouteName.screenThree,
                );
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
