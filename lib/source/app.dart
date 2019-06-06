import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_search_bloc/source/screens/home.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search'),
          backgroundColor: Colors.blue[900],
          brightness: Brightness.light,
          elevation: 1,
        ),
        body: SafeArea(
          child: Container(
            child: SearchBar(),
          ),
        ),
      ),
    );
  }
}
