import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "firstTask",
      home: Scaffold(
          appBar: AppBar(
            leading: new Padding(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child:CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/11/2b/74/112b746a2182417b2a947d949798c968.jpg'),
              ),
            ),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('menu1'),
                    color: Colors.white,
                    onPressed: () {/** */},
                  ),
                  FlatButton(
                    child: Text('menu2'),
                    color: Colors.white,
                    onPressed: () {/** */},
                  ),
                  FlatButton(
                    child: Text('menu3'),
                    color: Colors.white,
                    onPressed: () {/** */},
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.ad_units),
                title: new Text('App'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.mail),
                title: new Text('Messages'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.add_ic_call_outlined),
                title: new Text('Call'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('Profile'))
            ],
          ),
          body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: <Widget>[
           new Item("Rose", "This is a woody perennial flower of the", " genus Rosa, in the family Rosaceae, or the flower .", "assets/images/aaa.jpg"),
           new Item("Acacia", "These plants are delicate and tender.best", "in sheltered gardens away from the cold climates", "assets/images/Acacia.jpg"),
           new Item("Aconite", "The flowers tend to be blue-purple or yellow", "and the plant is native to mountainous areas.", "assets/images/Aconite.jpg"),
           new Item("Allium", "Is a family of plants that includes onions,", "chives, and garlic.Is a native of the Western Cape", "assets/images/Allium.jpg"),

           new Item("Anemone", "This is also known as the Windflower.", "This plant is a perennial that spreads while growing.", "assets/images/Alstroemeria.jpg"),
           new Item("Alyssum", "Alyssum or sweet alyssum is a hardy plant ", "that features heat and drought resistance.", "assets/images/Alyssum.jpg"),
           new Item("Amaryllis", "The  lily or Amaryllis, also known as the naked",  "lady plant, grows from a bulb.means pride ", "assets/images/Amaryllis.jpg"),
           new Item("Aster", "is a genus of perennial flowering plants in ", "the family Asteraceae.it now around 180 species",  "assets/images/Aster.jpg"),

            ],
          )),
    ),
  );
}
class Item extends StatelessWidget {
  final header;
  final text1;
  final text2;
  final pic;
  Item( this.header,this.text1,this.text2,this.pic);
  //final appTitle;
  @override
  Widget build(BuildContext content) {
    return  Container(
        padding: const EdgeInsets.fromLTRB(5,5,5,0),
        color: Colors.teal[100],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 10,0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                    pic,
                      width: 80,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      // default text style
                      children: <TextSpan>[
                        TextSpan(text: header+'\n', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        TextSpan(text: text1, style: TextStyle(fontSize: 13)),
                      ],
                    ),
                  ),),
              ],//A rose is a woody perennial flowering
            ),
             Text.rich(
              TextSpan(
                // default text style
                children: <TextSpan>[

                  TextSpan(text: text2, style: TextStyle(fontSize: 13)),
                ],
              ),
            ),
            SizedBox(
              child: FlatButton(
                padding: EdgeInsets.only(bottom: 5),
                child: Text('use this',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                color: Colors.white,

                onPressed: () {/** */},
              ),
              width: 150,
            ),
          ],
        ));
  }
}

