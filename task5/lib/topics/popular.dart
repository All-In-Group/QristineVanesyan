import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(child: Container(height: 80,child: Center(child: Text("Algorithms",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: Colors.green[600]))))),
        Card(
          child: ExpansionTile(
            title: Text("Searching Algorithms", style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19.0,
            ),),
            children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric( vertical: 5),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
                  margin: EdgeInsets.symmetric( vertical: 5),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
                  margin: EdgeInsets.symmetric( vertical: 3),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    ],
                  ),
                ),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Searching Algorithms", style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19.0,
            ),),
            children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric( vertical: 5),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
                  margin: EdgeInsets.symmetric( vertical: 5),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
                  margin: EdgeInsets.symmetric( vertical: 3),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    ],
                  ),
                ),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            title: Text("Searching Algorithms", style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19.0,
            ),),
            children: <Widget>[

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric( vertical: 5),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
                  margin: EdgeInsets.symmetric( vertical: 5),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
                  margin: EdgeInsets.symmetric( vertical: 3),
                  padding: EdgeInsets.only(left: 40),
                  height: 45,
                  child: Row(
                    children: [
                      Text("Searching Algorithms",style: TextStyle(fontSize: 16,color: Colors.grey),),
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
