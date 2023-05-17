import 'package:flutter/material.dart';

class ListViewDemoPage extends StatefulWidget {
  const ListViewDemoPage({Key? key}) : super(key: key);

  @override
  State<ListViewDemoPage> createState() => _ListViewDemoPageState();
}

class _ListViewDemoPageState extends State<ListViewDemoPage> {
  var count = 10;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count + 1,
      itemBuilder: _buildItem,
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    if (index == count) {
      return const Text('到底了');
    }
    return Text(index.toString());
  }
}
