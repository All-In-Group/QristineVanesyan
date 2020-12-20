import 'package:flutter/material.dart';

class LoginPasswordPage extends StatelessWidget {
  LoginPasswordPage({
    Key key,
    this.info,
  }) : super(key: key);

  final String info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Model Output"),
          backgroundColor: Colors.yellowAccent,
        ),
        body: Column(
          children: [Text(info)],
        ));
  }
}
