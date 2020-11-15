import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Himnadram';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class ItemsForLang extends StatelessWidget {
  final lang;

  ItemsForLang(this.lang);

  //final appTitle;
  @override
  Widget build(BuildContext content) {
    // TODO: implement build

    // throw UnimplementedError();
    return
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: InkWell(
          child: Text(lang),
          onTap: () {},
        ),

    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final temp = [
    "About us",
    "Our trustees",
    "Our donors",
    "Our team",
    "Our partners",
    "Contact us",
    "What we do",
    "Fundraising campaigns",
    "Activities",
    "Projects",
    "Events",
    "Awards",
    "Media",
    "Press releases",
    "News",
    "Newsletters",
    "Stories",
    "Announcements",
    "Gallery",
    "Videos",
    "How we work",
    "Video Reports",
    "Reports",
  ];

  final temp2 = [
    "About us",
    "In kind donations",
    "Join our team",
    "Your Account",
    "Login"];

  final lang = ['Հայ', 'Eng', 'Рус', 'Fra', 'Deu', 'Esp', 'Ita'];

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.dehaze),
            color: Colors.black,
            onPressed: () {
              if (_scaffoldKey.currentState.isDrawerOpen == false) {
                _scaffoldKey.currentState.openDrawer();
              } else {
                _scaffoldKey.currentState.openEndDrawer();
              }
            }),
        centerTitle: true,
        title: Image.asset('assets/images/logo.png',
            width: 100, fit: BoxFit.cover),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            shrinkWrap: true,

            padding: EdgeInsets.only(left: 20),
            // Important: Remove any padding from the ListView.
            children: <Widget>[
              Container(
                height: 70,
                child: DrawerHeader(
                  child: Wrap(
                    children: [
                      new ItemsForLang(lang[0]),
                      new ItemsForLang(lang[1]),
                      new ItemsForLang(lang[2]),
                      new ItemsForLang(lang[3]),
                      new ItemsForLang(lang[4]),
                      new ItemsForLang(lang[5]),
                      SizedBox(child: new ItemsForLang(lang[6])),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  //  itemExtent: 40.0,
                  itemCount: temp.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 40,
                      child: ListTile(
                        title: Text(temp[index]),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    );
                  }),
              ListView.builder(
                padding: EdgeInsets.only(top:20),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  //  itemExtent: 40.0,
                  itemCount: temp2.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 40,
                      child: ListTile(
                        title: Text(temp2[index]),
                        onTap: () {
                          // Update the state of the app
                          // ...
                          // Then close the drawer
                          Navigator.pop(context);
                        },
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
