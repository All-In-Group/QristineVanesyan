import 'package:flutter/material.dart';
import 'package:task5/AppDrawer.dart';
import 'package:task5/home/feed.dart';
import 'package:task5/quiz/quiz.dart';
import 'package:task5/topics/all.dart';
import 'package:task5/topics/interview.dart';
import 'package:task5/topics/popular.dart';


void main() => runApp(MyApp());
const String _title = 'GeeksforGeeks';
List<String> menu = [
  "Interest",
  "Todo/Done",
  "Offline Articles",
  "Rate us",
  "Support",
  "Settings",
  "Log-out"
];
List<IconData> menuIcon = [
  Icons.calendar_today,
  Icons.timer,
  Icons.download_outlined,
  Icons.star_rate,
  Icons.support_agent,
  Icons.settings,
  Icons.logout
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      title: _title,
      theme: ThemeData(
        primaryColor: Colors
            .green[600], //Changing this will change the color of the TabBar
      ),
      home: MyStatefulWidget(),
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
      children: [
        FeedPage(),
        FeedPage(),
      ],
    ),
    TabBarView(
      children: [
        Example(),
        ListItemTitle(),
        ListItemTitleLang(),
      ],
    ),
    ListView(
      children: <Widget>[
        Card(
          child: ExpansionTile(
            title:  CustomListItemTwo(
              title: 'Aptitude',
              subtitle:'Quiz Count :5',
              author: 'Questions :90',

            ),
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: CustomListItemTwo1(
                    title: 'Aptitude',
                    subtitle:'Quiz Count :5',


                  ),
                ),
              ),    Card(
                child: Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: CustomListItemTwo1(
                    title: 'Aptitude',
                    subtitle:'Quiz Count :5',


                  ),
                ),
              ),
              CardItem(),
            ],
          ),
        ),
      ],
    )
  ];
  static const List _widgetOptionsAppBar = [
    TabBar(
      unselectedLabelColor: Colors.white54,
      labelColor: Colors.white,
      indicatorWeight: 2,
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          child: Text(
            "FEED",
          ),
        ),
        Tab(
          child: Text(
            "RECENT",
          ),
        ),
      ],
    ),
    TabBar(
      unselectedLabelColor: Colors.white54,
      labelColor: Colors.white,
      indicatorWeight: 2,
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          child: Text(
            "POPULAR",
          ),
        ),
        Tab(
          child: Text(
            "INTERVIEW",
          ),
        ),
        Tab(
          child: Text(
            "ALL",
          ),
        ),
      ],
    ),
    Text("data"),
    //  PreferredSize(child: null, preferredSize: null)
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
        length: _widgetOptionsLength.elementAt(_selectedIndex),
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {})
            ],
            bottom: _selectedIndex == 0 || _selectedIndex == 1
                ? _widgetOptionsAppBar.elementAt(_selectedIndex)
                : null,
            title: Text(_title),
          ),
          body: Container(
            child: _widgetOptions.elementAt(_selectedIndex), //2
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book),
                label: 'Topics',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.question_answer_outlined),
                label: 'Quiz',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green[600],
            onTap: _onItemTapped,
          ),
          drawer: AppDrawer(),
        ));
  }
}


class CustomListItemTwo1 extends StatelessWidget {
  CustomListItemTwo1({
    Key key,
    this.title,
    this.subtitle,


  }) : super(key: key);

  final String title;
  final String subtitle;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 40,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _ArticleDescription1(
              title: title,
              subtitle: subtitle,


            ),

          ],
        ),
      ),
    );
  }
}
class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.title,
    this.subtitle,
    this.author,

  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 60,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _ArticleDescription(
              title: title,
              subtitle: subtitle,
              author: author,

            ),

          ],
        ),
      ),
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    Key key,
    this.title,
    this.subtitle,
    this.author,

  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;


  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$title',
              //  maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$subtitle',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),

            Text(
              '$author',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ArticleDescription1 extends StatelessWidget {
  _ArticleDescription1({
    Key key,
    this.title,
    this.subtitle,
    this.author,

  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;


  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$title',
              //  maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$subtitle',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}



class CardItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () {
          Navigator.push(context ,MaterialPageRoute(
              builder: (context) => Quiz()
          ));
        },
        child: Padding(
          padding: const EdgeInsets.only(left:30.0),
          child: CustomListItemTwo1(
            title: 'Aptitude',
            subtitle:'Quiz Count :5',
          ),
        ),
      );
  }
}

