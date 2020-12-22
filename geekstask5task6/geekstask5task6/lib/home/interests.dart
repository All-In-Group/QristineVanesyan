import 'package:flutter/material.dart';
import 'package:geekstask5task6/generated/l10n.dart';

class Interests extends StatefulWidget {
  @override
  Interest createState() => Interest();
}

class Interest extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          S.of(context).select,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
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
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> reportList = [
    " Accolite ",
    " Adobe ",
    " Advanced Computer Subject ",
    " Andvanced Data Structure ",
    " Algorithms ",
    " Amazon ",
    " Analysis ",
    " Android ",
    " android ",
    " Angular JS ",
    " Angular JS-Misc ",
    " Aptitude ",
    " area-volume-programs ",
    " array-rearrange ",
    " Articles ",
    " Binary Search ",
    " Binary Tree ",
    " binary-string ",
    " BlockChain ",
    " Dart ",
    " Data Structures ",
    " DBSM ",
    " factorial ",
    " frequency-counting ",
    " GBlog ",
    " HTML-Attributes ",
    " HTML-DOM ",
    " HTML-Misc ",
    " HTML-Property ",
    " HTML-SVG ",
    " HTML-Tags ",
    " HTML5 ",
    " Image-Processing ",
    " Information-Security ",
  ];

  List<String> selectedReportList = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        backgroundColor: Colors.green,
        tooltip: 'Increment',
        onPressed: () {},
        child: Icon(Icons.check),
      ),
      body: SingleChildScrollView(
        child: MultiSelectChip(
          reportList,
          onSelectionChanged: (selectedList) {
            setState(() {
              selectedReportList = selectedList;
            });
          },
        ),
      ),
    );
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = List();

  _buildChoiceList() {
    List<Widget> choices = List();

    widget.reportList.forEach((item) {
      choices.add(Container(
        margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: ChoiceChip(
          backgroundColor: Colors.green,
          selectedColor: Colors.white,
          selected: selectedChoices.contains(item),
          label: selectedChoices.contains(item)
              ? Text(item, style: TextStyle(fontSize: 14, color: Colors.grey))
              : Text(item, style: TextStyle(fontSize: 14, color: Colors.white)),
          shape: selectedChoices.contains(item)
              ? StadiumBorder(side: BorderSide(color: Colors.grey))
              : null,
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
