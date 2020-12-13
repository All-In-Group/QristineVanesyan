import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagIcon extends StatelessWidget {
  const TagIcon({
    this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(3.0),
        padding: const EdgeInsets.fromLTRB(10.0, 5, 10, 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
      ),
    );
  }
}
