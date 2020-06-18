import 'package:flutter/material.dart';

void main() => runApp(PageDetail());

class PageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World by flutter'),
          ),
        ),
      );
  }
}
