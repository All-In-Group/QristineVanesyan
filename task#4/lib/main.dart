import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final List<String> titles = <String>[
  'You get 2 KWD bonus',
  'You get 13 KWD bonus',
  'You get 1 KWD bonus',
  'You get 2 KWD bonus'
];
final List<String> subtitles = <String>[
  '05.11.2020',
  '03.11.2020',
  '03.11.2020',
  '01.11.2020'
];
final List<String> authors = <String>[
  'Opposite Dalal Centre.Al-Dajeej\,\nKuwait',
  'Opposite Dalal Centre.Al-Dajeej\,\nKuwait',
  'Opposite Dalal Centre.Al-Dajeej\,\nKuwait',
  'Opposite Dalal Centre.Al-Dajeej\,\nKuwait'
];

class MyApp extends StatelessWidget {
  final appTitle = 'City Centre';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final title = "City Centre";

  List<Widget> _tabList = [
    Container(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 50),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      width: 3,
                      color: Colors.grey[700],
                      style: BorderStyle.solid)),
              child: Center(
                  child: Text(
                "000 001",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700]),
              )),
            ),
            Container(
              height: 250,
              width: 250,
              child: Image.asset('assets/images/QR.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                      width: 3,
                      color: Colors.grey[700],
                      style: BorderStyle.solid)),
              child: Center(
                child: Text(
                  "scan code",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700]),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      color: Colors.white,
      child: ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(left: 5),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[350],
            ),
            child: ForColaListPage(
              thumbnail: new ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/cola.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: 'Coca Cola',
              subtitle: 'Only today get coca-cola with 0.1\$.',
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 70,
          color: Colors.white,
        ),
      ),
    ),
    Container(
      color: Colors.white,
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(left: 10),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[350],
            ),
            child: ForBonusPage(
              thumbnail: Icon(
                Icons.add_alert,
                size: 45,
                color: Colors.red,
              ),
              title: titles[index],
              author: subtitles[index],
              publishDate: authors[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 30,
          color: Colors.white,
        ),
      ),
    ),
    Container(
        child: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Text(
                  "Sarah Al Ali",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "id:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
              Text(
                "000 001",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "phone:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
              Text(
                "+965 12345678",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "email:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
              Text(
                "sarah.al.ali@mail.ku",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "points:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
              Text(
                "39 KWD",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "discount:",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
              Text(
                "7%",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 80),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        width: 3,
                        color: Colors.grey,
                        style: BorderStyle.solid)),
                child: FlatButton(
                  textColor: Colors.grey,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "detailed information",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        width: 3,
                        color: Colors.grey,
                        style: BorderStyle.solid)),
                child: FlatButton(
                  textColor: Colors.grey,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "settings",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ))
  ];

  TabController _tabController;

//  final String title;
  //MyHomePage({Key key, this.title}) : super(key: key);
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/images/cocaColaLogo.png'),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 45,
                      color: Colors.red),
                ),
              ],
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.grey, Colors.white])),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          children: [
            const Divider(
              color: Colors.grey,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (currentIndex) {
                setState(() {
                  _currentIndex = currentIndex;
                });

                _tabController.animateTo(_currentIndex);
              },

              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              //   currentIndex: 0, // this will be set when a new tab is tapped
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                      height: 53,
                      child: new Icon(
                        Icons.home,
                        size: 40,
                      )),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      child: new Icon(
                    Icons.local_offer_outlined,
                    size: 40,
                  )),
                  title: new Text('Label'),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      child: new Icon(
                    Icons.add_alert,
                    size: 40,
                  )),
                  title: new Text('Alert'),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      child: new Icon(
                    Icons.account_circle_outlined,
                    size: 40,
                  )),
                  title: new Text('Account'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabList,
      ), /**/
    );
  }
}

class ForColaListPage extends StatelessWidget {
  ForColaListPage({
    Key key,
    this.thumbnail,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '$title',
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 25,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                          Text(
                            '$subtitle',
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ForBonusPage extends StatelessWidget {
  ForBonusPage({
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
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: [
                thumbnail,
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    " date:\n address:",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 2.0, 0.0),
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
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '$author',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                publishDate,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
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
