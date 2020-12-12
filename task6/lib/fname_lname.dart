import 'package:flutter/material.dart';

class FnameLnamePage extends StatelessWidget {
  FnameLnamePage({
    Key key,
    this.info,
  }) : super(key: key);

  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Third Model Output"),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [Text(info)],
        ));
  }
}
