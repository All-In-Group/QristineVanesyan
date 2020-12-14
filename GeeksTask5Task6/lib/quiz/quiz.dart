import 'package:flutter/material.dart';
import 'package:task5/generated/l10n.dart';
import 'package:task5/quiz/question.dart';

const String _title = 'Probability';
List<String> categories = [
  "What will be the maximum sum of 44, 42, 40, .... ?",
  "A tourist covers half of his journey by train at 60 km/h, half of the remainder by bus at 30 km/h and the rest by cycle at 10 km/h. The average speed of the tourist in km/h during his entire journey is",
  "If two fair coins are flipped and at least one of the outcomes is known to be a head, what is the probability that both outcomes are heads?",
  "A deck of 5 cards (each carrying a distinct number from 1 to 5) is shuffled thoroughly. Two cards are then removed one at time from the deck. What is the probability that the two cards are selected with the number on the first card being one higher than the number on the second card?",
  "Consider a company that assembles computers. The probability of a faulty assembly of any computer is p. The company therefore subjects each computer to a testing process.This testing process gives the correct result for any computer with a probability of q. What is the probability of a computer being declared faulty?",
  "An unbalanced dice (with 6 faces, numbered from 1 to 6) is thrown. The probability that the face value is odd is 90% of the probability that the face value is even. The probability of getting any even numbered face is the same. If the probability that the face is even given that it is greater than 3 is 0.75, which one of the following options is closest to the probability that the face value exceeds 3?"
];
List<String> answers = [
  /*1-1*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*1-2*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*1-3*/  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*1-4*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*2-1*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*2-2*/  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*2-3*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*2-4*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*3-1*/ "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*3-2*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*3-3*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*3-4*/  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*4-1*/ "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*4-2*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*4-3*/  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*4-4*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*5-1*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*5-2*/  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*5-3*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*5-4*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*6-1*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  /*6-2*/  "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  /*6-3*/  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  /*6-4*/  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
 

];
List<int> ind = [
  0,
  4,
  8,
  12,
  16,
  20,
];
List<String> images = [
  "assets/images/A.PNG",
  "assets/images/B.PNG",
  "assets/images/C.PNG",
  "assets/images/D.PNG",
];

class Quiz extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [
    TabBarView(
        children: List<Widget>.generate(
      categories.length,
      (int index) {
        // print(categories[0]);
        return SingleChildScrollView(
          child: new Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                new Text(
                  categories[index],
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                Container(
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Question(i: ind[index]),
              ],
            ),
          ),
        );
      },
    ))
  ];
  static const List _widgetOptionsLength = [2, 3, 0];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
          //  automaticallyImplyLeading: false,
            title: Text(_title),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_sharp),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.3),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(S.of(context).Question + "1"),
                      ),
                      Tab(
                        child: Text(S.of(context).Question + "2"),
                      ),
                      Tab(
                        child: Text(S.of(context).Question + "3"),
                      ),
                      Tab(
                        child: Text(S.of(context).Question + "4"),
                      ),
                      Tab(
                        child: Text(S.of(context).Question + "5"),
                      ),
                      Tab(
                        child: Text(S.of(context).Question + "6"),
                      )
                    ]),
                preferredSize: Size.fromHeight(30.0)),
          ),
          body:
            Container(
              child: _widgetOptions.elementAt(_selectedIndex), //2
          ),
        ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      useRootNavigator: false,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
                // Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("No", style: TextStyle(color: Colors.green)),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Yes", style: TextStyle(color: Colors.green)),
      onPressed: () {
        //Navigator.pop(context);

        Navigator.of(context, rootNavigator: true).pop();
        showMyAlertDialog(context);
        // _showMyDialog();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content:
          Text("End Quiz ?", style: TextStyle(fontWeight: FontWeight.w600)),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showMyAlertDialog(BuildContext context) {
    // set up the buttons

    Widget allowButton = FlatButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.green),
      ),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alertDialog = AlertDialog(
      title: Text('Quiz Summary'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [new Text("Total"), new Text("0")]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [new Text("Correct"), new Text("0")]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [new Text("Incorrect"), new Text("1")]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [new Text("Not Attempted"), new Text("1")]),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text("OK", style: TextStyle(color: Colors.green)),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
