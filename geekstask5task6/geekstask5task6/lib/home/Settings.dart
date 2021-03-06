import 'package:flutter/material.dart';
import 'package:geekstask5task6/generated/l10n.dart';

class Settings extends StatefulWidget {
  @override
  Setting createState() => Setting();
}

class Setting extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Text(S.of(context).Settings),
            backgroundColor: Colors.green,
          ),
          body:
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.download_rounded,
                color: Colors.grey,
                size: 45.0,
              ),
              Text(S.of(context).offlinemessage,style: TextStyle(fontSize: 18,color:Colors.grey)),
            ],
          )),
        ),
      ),
    );
  }
}
