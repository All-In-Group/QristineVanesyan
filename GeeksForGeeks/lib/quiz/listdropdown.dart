import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuizPage();
}

class _QuizPage extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
            child: Container(
                height: 80,
                child: Center(
                    child: Text("Algorithms",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, color: Colors.green[600]))))),
        Card(
          child: ExpansionTile(
            title: Text(
              "Searching Algorithms",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19.0,
              ),
            ),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 3),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text(
              "Searching Algorithms",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19.0,
              ),
            ),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 3),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: ListView(
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[
                CustomListItemTwo(
                  thumbnail: Container(
                    decoration: const BoxDecoration(color: Colors.pink),
                  ),
                  title: 'Flutter 1.0 Launch',
                  subtitle:
                      'Flutter continues to improve and expand its horizons.'
                      'This text should max out at two lines and clip',
                  author: 'Dash',
                  publishDate: 'Dec 28',
                  readDuration: '5 mins',
                ),
                CustomListItemTwo(
                  thumbnail: Container(
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                  title:
                      'Flutter 1.2 Release - Continual updates to the framework',
                  subtitle: 'Flutter once again improves and makes updates.',
                  author: 'Flutter',
                  publishDate: 'Feb 26',
                  readDuration: '12 mins',
                ),
              ],
            ),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.symmetric(vertical: 3),
                padding: EdgeInsets.only(left: 40),
                height: 45,
                child: Row(
                  children: [
                    Text(
                      "Searching Algorithms",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 17.0,
            color: Colors.grey,
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
      ],
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$title',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                '$subtitle',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '$author',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black87,
                ),
              ),
              Text(
                '$publishDate - $readDuration',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _ArticleDescription(
                  title: title,
                  subtitle: subtitle,
                  author: author,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
