import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Screen 3'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepOrange
              ),
              child: Center(
                child: Text(
                  'Screen 3'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}