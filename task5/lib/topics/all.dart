import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemTitleLang extends StatelessWidget {
  List<String> items = [
    "Advanced Computer Subject",
    "Advanced Data Structure",
    "Algorithms",
    "Analysis",
    "Android",
    "AngularJS",
    "Arrays",
    "Articles",
    "Backtracking",
    "Binary Search Tree",
    "Bit Magic",
    "Bootstrap",
    "C#",
    "C Programs",
    "Game Theory",
    "GeeksQuiz",
    "Geometric"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: CustomListItemTwo(
            title: items[index],
          ),
        );
      },
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 35,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _ArticleDescription(
              title: title,
            ),
          ],
        ),
      ),
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      //  maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
