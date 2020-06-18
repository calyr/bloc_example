import 'package:flutter/material.dart';
import 'package:testpageapp/page_detail.dart';
import 'package:testpageapp/page_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/detail': (context) => PageDetail()
      },
    );
  }
}
