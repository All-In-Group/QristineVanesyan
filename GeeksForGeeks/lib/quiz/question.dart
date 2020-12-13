import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/quiz/quiz.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final int i;

  const Question({Key key, this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Image.asset(images[index]),
                Text(
                  answers[index + i],
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ],
            ),
            Container(
              child: Divider(
                color: Colors.black,
              ),
            ),
          ],
        );
      },
    );
  }
}
