// @dart=2.9
import 'package:flutter/material.dart';
import 'package:my_potforlio/screens/home_page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
