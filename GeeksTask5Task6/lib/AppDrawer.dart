import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'generated/l10n.dart';
import 'home/interests.dart';

class AppDrawer extends StatelessWidget {

  List list = [
    Interests(),
  ];
  List<String> selectedReportList = List();
  String email = "contact@ouiquit.com";

  _launchEmail() async {
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email");
    } else {
      throw 'Could not launch';
    }
  }

  _launchURL() async {
    const url =
        'https://play.google.com/store/apps/details?id=free.programming.programming';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<IconData> menuIcon = [
    Icons.calendar_today,
    Icons.timer,
    Icons.download_outlined,
    Icons.star_rate,
    Icons.support_agent,
    Icons.settings,
    Icons.logout
  ];
  List contexts = [
    Icons.calendar_today,
    Icons.timer,
    Icons.download_outlined,
    Icons.star_rate,
    Icons.support_agent,
    Icons.settings,
    Icons.logout
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> menu = [
      S.of(context).Interest,
      S.of(context).TodoDone,
      S.of(context).OfflineArticles,
      S.of(context).RateUs,
      S.of(context).Support,
      S.of(context).Settings,
      S.of(context).LogOut
    ];
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: 100,
            child: DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 100, // Not sure what to put here!
                    width: 100, // Not sure what to put here!
                    child: new Image.asset(
                      "assets/images/user.PNG",
                      fit: BoxFit
                          .fill, // I thought this would fill up my Container but it doesn't
                    ),
                  ),
                  Text("name surname",
                      style: TextStyle(color: Colors.grey[500], fontSize: 20)),
                ],
              ),
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.only(top: 20),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              //  itemExtent: 40.0,
              itemCount: menu.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 40,
                  child: ListTile(
                    leading: Icon(menuIcon[index]),
                    title: Text(menu[index]),
                    onTap: () {
                      if (index == 3) {
                        _launchURL();
                      } else if (index == 4) {
                        _launchEmail();
                      } else {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => list[index]),
                        );
                      }
                      /* Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => list[index]),
                      );*/
                    },
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    //    Navigator.pop(context);
                  ),
                );
              }),
        ],
      ),
    );
  }}