import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geekstask5task6/generated/l10n.dart';
import 'package:geekstask5task6/home/tags.dart';




class Articles extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<Articles> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    new Pages(),
    new Pages(),
    new Pages(),
    new Pages(),
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          S.of(context).feedArticles,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,

        // reverse: true,
        // physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}

class CustomListItem1 extends StatelessWidget {
  const CustomListItem1({
    this.title,
    this.user,
  });

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: _Article12222(
              title: title,
              user: user,
            ),
          ),
        ],
      ),
    );
  }
}

class _Article12222 extends StatelessWidget {
  const _Article12222({
    Key key,
    this.title,
    this.user,
  }) : super(key: key);

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
        Text(
          user,
          style: const TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TagIcon(title: "Dart"),
                  TagIcon(title: "Flutter"),
                  TagIcon(title: "Advanced Data Structure"),
                ],
              ),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
                size: 20.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new Titles(
                    text: "7 Must-Watch Web Shows for Tech Geeks",
                    size: 29,
                  ),
                ),
                new Italic(
                    text:
                        "After hustling with the source codes, databases, APIs, or other related stuff the entire week - wouldn't it be great to get yourself refreshed and delighted over the weekend"
                        " by watching some interesting web shows? (Sounds exciting, right?)"),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: ImageCustom(img: "assets/images/ArticleA.PNG"),
                ),
                new Text(
                    "And fortunately, there have been numerous web shows available for all the geeks out there. However, there is an issue with every tech enthusiast that they are quite fastidious - not only with the tech "
                    "stack or other tools & technologies that they use but even when they need to pick out a movie or web show for themselves to watch. They're often "
                    "like to get entertained with intellectual and technology-focused content.",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left),
                TextWithPadding(
                    text:
                        "Here, in this article, we've compiled a list of 7 must-watch web shows having the tech-focused content that'll surely give chills to all the techies: "),
                Titles(
                  text: "1. The IT Crowd",
                  size: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "Do you want to witness the adventurous environment of a tech company with"
                            " some tensed as well as funny situations b/w tech and non-tech professionals…??",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text:
                            "If yes, then 'The IT Crowd' is meant for you! The story of this show revolves around three individuals in "
                            "the Information Technology (IT) department working in the basement of a fictional company Reynholm Industries. "
                            "When two of them are quite genius (though socially awkward), one of the three is the manager and yes, she doesn't"
                            " know anything about tech. In this show, you'll find various moments and situations true to real-life aspects along"
                            " with IT-related practical jokes that will surely allow you to have a good laugh.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 30, 0, 20),
                  child: Column(children: <Widget>[
                    UnorderedList(text: "Realased On: 2006"),
                    UnorderedList(text: "No. Of Seasons: 04"),
                  ]),
                ),
                Text(
                    "It is one of the most-recommended web series for all tech geeks with an IMDb rating of around 8.5 and you can watch all the episodes of 'The IT Crowd' on Netflix India.",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                /*--------------------------------------2---------------------------------------------*/
                Titles(
                  text: "2. Silicon Valley",
                  size: 20,
                ),
                new Text(
                    "If you're a tech person then chances are less that you've not heard about Silicon Valley - a global region for technology and innovation. This shows also depicts the culture of Silicon Valley and follows the life of a programmer, Richard Hendricks who builds a startup company, and his struggles along with his friends/colleagues to make it big in the tech world while facing high competition from giant entities. The show manages to showcase the insight aspects of the tech startup along with dealing with venture capitalists and about the bubble of Silicon Valley. And the best part of this series is all the seasons are connected with a single story instead of having a separate story for each series.  ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 40, 0, 0),
                  child: Column(children: <Widget>[
                    new UnorderedList(
                      text: 'Released On: 2014',
                    ),
                    new UnorderedList(
                      text: 'No. Of Seasons: 06',
                    ),
                  ]),
                ),
                new TextWithPadding(
                  text:
                      "The show is not meant for those who are not interested in"
                      " technology as many of the jokes are tech-related which they"
                      " won't be able to understand, it is particularly meant for all "
                      "the tech enthusiasts. And you can watch all the episodes of "
                      "Silicon Valley on Hotstar Premium in India.  ",
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "As a bonus, let us tell you a few more web shows that can also be taken into consideration -",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: " Scorpion, CSI, ",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: "Westworld ",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text:
                            ". And yes, a list of web shows for geeks can't be completed without mentioning this cult classic, ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: "Big Bang Theory ",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text:
                            "So, if you're in a search of a web show based on tech-related content for the upcoming weekend to get refreshed and enlightened - ",
                        style: TextStyle(fontSize: 18),
                      ),
                      TextSpan(
                        text:
                            "take a look at the above-mentioned list and pick out the one as per your interest!!",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: hr(),
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/images/Author.PNG",
                          height: 70,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Text(
                              "madhur912",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text(
                            "Check out this Author's",
                            style: TextStyle(fontSize: 18),
                          ),
                          InkWell(
                              child: Text(
                            "contributed articles.",
                            style: TextStyle(
                              fontSize: 18,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                hr(),
                TagIcon(title: "GBlog"),
                hr(),
                ImageCustom(img: "assets/images/Ads.PNG"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                      child: Text(
                    "Get Enrolled to DSA Course",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange,
                      decoration: TextDecoration.underline,
                    ),
                  )),
                ),
                hr(),
                Card(
                  child: CustomListItem1(
                    user:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                    title: 'The Flutter YouTube Channel',
                  ),
                ),
                Card(
                  child: CustomListItem1(
                    user:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                    title: 'The Flutter YouTube Channel',
                  ),
                ),
                Card(
                  child: CustomListItem1(
                    user:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                    title: 'The Flutter YouTube Channel',
                  ),
                ),
                Card(
                  child: CustomListItem1(
                    user:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                        'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                    title: 'The Flutter YouTube Channel',
                  ),
                ),
              ],
            )));
  }
}

class Italic extends StatelessWidget {
  final text;

  Italic({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
        textAlign: TextAlign.left);
  }
}

class Titles extends StatelessWidget {
  final text;
  final double size;

  Titles({this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: size,
            ),
            textAlign: TextAlign.left),
      ),
    );
  }

  /// textAlign: TextAlign.left
}

class TextWithPadding extends StatelessWidget {
  final text;

  //final double size;

  TextWithPadding({
    this.text,
    /*this.size*/
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Text(text,
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.left),
    );
  }

  /// textAlign: TextAlign.left
}

class UnorderedList extends StatelessWidget {
  final text;

  //final double size;

  UnorderedList({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.black,
        ),
        Text("   " + text,
            style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic)),
      ],
    );
  }
}

class ImageCustom extends StatelessWidget {
  final img;

  //final double size;

  ImageCustom({
    this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 200,
      child: Image.asset(
        img,
        fit: BoxFit.fill,
      ),
    );
  }
}

class hr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      height: 20,
      thickness: 1,
      indent: 0,
      endIndent: 0,
    );
  }
}
