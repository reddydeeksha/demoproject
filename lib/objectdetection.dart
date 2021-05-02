import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:majorproj2/videostream1/screens/detect_screen.dart';

void main() => runApp(MyApp123());

class MyApp123 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Detect Room Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetectScreen(title: 'Detect Room Color'),
    );
  }
}