import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "firstTask",
      home: Scaffold(
        appBar: AppBar(
          leading: new Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/11/2b/74/112b746a2182417b2a947d949798c968.jpg'),
            ),
          ),
          actions: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('menu1'),
                  color: Colors.white,
                  onPressed: () {
                    /** */
                  },
                ),
                FlatButton(
                  child: Text('menu2'),
                  color: Colors.white,
                  onPressed: () {
                    /** */
                  },
                ),
                FlatButton(
                  child: Text('menu3'),
                  color: Colors.white,
                  onPressed: () {
                    /** */
                  },
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
              icon: new Icon(Icons.home),
              title: new Text('Home'),
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
              icon: new Icon(Icons.mail),
              title: new Text('Messages'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ],
        ),
        body: Column(
          children: <Widget>[
            Row(
              //ROW 1
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:  Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/c/c6/Stockholm-lilac.jpg'),
                      width: 180,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: Container(
                    width: 180,
                    child: const Text.rich(
                      TextSpan(
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Lilac\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19)),
                          TextSpan(
                              text:
                              'Syringa vulgaris (lilac or common lilac) is a species of flowering plant in the olive family Oleaceae, native to the Balkan Peninsula, where it grows on rocky hills.',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ), //A rose is a woody perennial flowering
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Container(
                      width: 350,
                      child: Text(
                          'Grown for its scented purple flowers in spring, this large shrub or small tree is widely cultivated and has been naturalized in parts of Europe and North America.',
                          style: TextStyle(fontSize: 16))),
                ),
              ],
            ),
            Row(
              //ROW 2
              children: [
                Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(25.0),
                  child: FlatButton(
                    child: Text('use this',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color:Colors.white),
                    ),


                    onPressed: () {/** */},
                  ),
                  width: 150,
                ),
                Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(25.0),
                  child: FlatButton(
                    child: Text('remember',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color:Colors.white),

                    ),


                    onPressed: () {/** */},
                  ),
                  width: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
