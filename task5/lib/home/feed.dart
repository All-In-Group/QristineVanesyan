import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/home/tags.dart';
import 'file:///C:/Users/user/Desktop/QristineVanesyan/task5/lib/ArticlaPages/Article.dart';


class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 3,
          color: Colors.white,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () async {
               //   Navigator.pop(context);
                  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>  Articles()),
                  );
                },
                child: CustomListItem(
                  user:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                      'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                  title: 'The Flutter YouTube Channel',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.title,
    this.user,

  });

  final String title;
  final String user;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: _Article(
              title: title,
              user: user,
            ),
          ),
        ],
      ),
    );
  }
}

class _Article extends StatelessWidget {
  const _Article({
    Key key,
    this.title,
    this.user,
  }) : super(key: key);

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
        Text(
          user,
          style: const TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TagIcon(title: "Dart"),
                  TagIcon(title: "Flutter"),
                  TagIcon(title: "Advanced Data Structure"),
                ],
              ),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 20.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
