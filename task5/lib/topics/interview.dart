import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemTitle extends StatelessWidget {
  List<String> items = ["Amazon(833)","STL(404)","Microsoft(381)","number-theory(160)","Prime Number(133)","Adobe(130)","Oracle(122)",
  "Flipkart()","Binary Search(114)","sieve(102)"];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title:  Card(child: ListTile(title: Text(items[index],style: TextStyle(fontWeight: FontWeight.bold),))),
        );
      },
    );
  }
}