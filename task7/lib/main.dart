import 'package:flutter/material.dart';
import 'page_for_buttons.dart';
import 'qrcode_scanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QrCodeScan(),
    );
  }
}