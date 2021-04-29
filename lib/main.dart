import 'package:flutter/material.dart';
import 'package:meatMart/home_page.dart';
import 'package:meatMart/page_guide.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meat Mart',
      home: PageGuide(),
    );
  }
}

