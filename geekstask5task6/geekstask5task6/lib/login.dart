import 'package:flutter/material.dart';

import 'my_class_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Geeks for geeks",
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child:
                    new Image(image: AssetImage('assets/images/logo.PNG'))),
              ),
              Container(
                // margin: const EdgeInsets.only(bottom: 18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "Welcome ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 40),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "Sign-In to Continue ! ",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 20),
                  ),
                ),
              ),
              new Form(
                // key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new textField(Icons.account_circle_outlined, "Email or Username"),
                    new textField(Icons.vpn_key, "Password"),
                    Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(0, 7, 0, 20),
                        child: InkWell(
                          child: Text("Forgot password ?",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 16)),
                          // onTap: () {print("value of your text");},
                        )),
                    Container(
                      width: 400,
                      height: 48,
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      //padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new setttingWidget(MyClass.google, "Google"),
              new setttingWidget(MyClass.facebook, "Facebook"),
              new setttingWidget(MyClass.github_circled, "Github"),
              new setttingWidget(MyClass.linkedin_squared, "LinkedIn"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //Center Row contents vertically,
                  children: [
                    Text(
                      "Don't have an account? ",style: TextStyle(
                        fontWeight: FontWeight.bold ,fontSize: 16, color: Colors.grey[600]),
                    ),
                    InkWell(
                      child: Text("Sign up Now!",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green[600]),
                        // onTap: () {print("value of your text");},
                      ),
                    ),
                  ],
                ),
              ),
              // new Text("Sign-In to Continue ! "),
            ],
          ),
        ),
      ),
    );
  }
}

class setttingWidget extends StatelessWidget {
  final IconData next;
  final String text;

  setttingWidget(this.next, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      width: 400,
      child: FlatButton(
        onPressed: () {
          /*...*/
        },
        child: Row(
          children: [
            Icon(next),
            Expanded(
                child: Text(
                  "Sign-in using " + text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
class textField extends StatelessWidget {
  final IconData next;
  final String text;

  textField(this.next, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[100],
          enabledBorder: const OutlineInputBorder(
// width: 0.0 produces a thin "hairline" border
            borderSide: const BorderSide(color: Colors.white, width: 0.0),
          ),
          border: OutlineInputBorder(
//  borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: Colors.red,
              )
          ),
          labelText: text,
          prefixIcon: Icon(next) ,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );}}