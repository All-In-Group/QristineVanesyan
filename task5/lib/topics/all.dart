import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemTitleLang extends StatelessWidget {
  List<String> items = ["Advanced Computer Subject","Advanced Data Structure","Algorithms","Analysis","Android","AngularJS","Arrays","Articles",
    "Backtracking","Binary Search Tree","Bit Magic","Bootstrap","C#","C Programs","Game Theory","GeeksQuiz","Geometric"];

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