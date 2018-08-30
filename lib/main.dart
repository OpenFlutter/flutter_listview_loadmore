import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: LoadMore(
          isFinish: false,
          onLoadMore: _loadMore,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Text(index.toString()),
                height: 40.0,
                alignment: Alignment.center,
              );
            },
            itemCount: 50,
          ),
        ),
      ),
    );
  }

  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 3));
    return true;
  }
}
