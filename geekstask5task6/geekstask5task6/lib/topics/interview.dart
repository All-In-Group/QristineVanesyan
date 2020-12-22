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
  color: Colors.black87,
  fontWeight: FontWeight.w600,
  ),
  );
  }
  }
