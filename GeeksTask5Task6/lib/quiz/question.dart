import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

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
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(images[index],height: 50,fit: BoxFit.fitWidth,
                  width: 50,),
        new Container (
        width: 340,
        child: new Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        new Text (answers[index + i]),

        ],
        ),
        ),
           /*     Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    answers[index + i],
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),*/
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
