import 'package:flutter/material.dart';

class CountyCityPage extends StatelessWidget {
  CountyCityPage({
    Key key,
    this.info,
  }) : super(key: key);

  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Model Output"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [Text(info)],
        ));
  }
}
