import 'package:flutter/material.dart';
import 'package:testpageapp/blocs/movies_bloc.dart';
import 'package:testpageapp/page_detail.dart';
import 'package:testpageapp/page_main.dart';
import 'bloc_provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        bloc: MoviesBloc(),
        child: Page1(),
      ),
      // routes: {
      //   '/': (context) => Page1(),
      //   '/detail': (context) => PageDetail()
      // },
    );
  }
}
