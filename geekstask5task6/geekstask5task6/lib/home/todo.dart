import 'package:flutter/material.dart';
import 'package:geekstask5task6/generated/l10n.dart';

class ToDo extends StatefulWidget {
  @override
  todopage createState() => todopage();
}

class todopage extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green,
                actions: <Widget>[
                  IconButton(icon: Icon(Icons.search), onPressed: () {})
                ],
                title: Text(S.of(context).TodoDone),
                bottom: TabBar(
                  unselectedLabelColor: Colors.white54,
                  labelColor: Colors.white,
                  indicatorWeight: 2,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(child: Text( S.of(context).todo,),
                     ),
                    Tab(child: Text(S.of(context).done),),
                  ],
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              body: TabBarView(
                children: [
                  Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 36.0,
                      ),
                      Text(S.of(context).todomessage1,style: TextStyle(fontSize: 18,color:Colors.grey)),
                      Text(S.of(context).todomessage2,style: TextStyle(fontSize: 18,color:Colors.grey),),
                    ],
                  )),
                  Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 36.0,
                      ),
                      Text(S.of(context).donemessage,style: TextStyle(fontSize: 18,color:Colors.grey)),
                      Text(S.of(context).todomessage2,style: TextStyle(fontSize: 18,color:Colors.grey),),
                    ],
                  )),
                ],
              ),
            )));
  }
}
