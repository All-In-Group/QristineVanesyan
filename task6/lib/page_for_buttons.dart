import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'FirstModel.dart';
import 'SecondModel.dart';
import 'ThirdModel.dart';
import 'country_city.dart';
import 'fname_lname.dart';
import 'log_pass.dart';

FirstModel _model1;
SecondModel _model2;
ThirdModel _model3;

int flag = 0;

final TextEditingController loginController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

final TextEditingController countryController = TextEditingController();
final TextEditingController cityController = TextEditingController();

final TextEditingController fnameController = TextEditingController();
final TextEditingController lnameController = TextEditingController();

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Future<FirstModel> FirstModel1(String login, String password) async {
  final String apiUrl = "https://reqres.in/api/users";
 /* final String apiUrl = "https://api.allin.am/kasir/coupon";*/
  final response =
      await http.post(apiUrl, body: {"login": login, "password": password});

  if (response.statusCode == 201) {
    final String responseString = response.body;

    return FirstModelFromJson(responseString);
  } else {
    return null;
  }
}

Future<SecondModel> SecondModel1(String country, String city) async {
  final String apiUrl = "https://reqres.in/api/users";
/*  final String apiUrl = "https://api.allin.am/kasir/bonus";*/

  final response =
      await http.post(apiUrl, body: {"country": country, "city": city});

  if (response.statusCode == 201) {
    final String responseString = response.body;

    return SecondModelFromJson(responseString);
  } else {
    return null;
  }
}

Future<ThirdModel> ThirdModel1(String fname, String lname) async {
  final String apiUrl = "https://reqres.in/api/users";
/*  final String apiUrl = "https://api.allin.am/kasir/purchase";*/

  final response =
      await http.post(apiUrl, body: {"fname": fname, "lname": lname});

  if (response.statusCode == 201) {
    final String responseString = response.body;

    return ThirdModelFromJson(responseString);
  } else {
    return null;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(32),
              child: FirstButton(),
            ),
            Container(
              padding: EdgeInsets.all(32),
              child: SecondButton(),
            ),
            Container(
              padding: EdgeInsets.all(32),
              child: ThirdButton(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String login = loginController.text;
          final String password = passwordController.text;

          final String country = countryController.text;
          final String city = cityController.text;

          final String fname = fnameController.text;
          final String lname = lnameController.text;

          print(login);
          print(password);
          final FirstModel model1 = await FirstModel1(login, password);
          final SecondModel model2 = await SecondModel1(country, city);
          final ThirdModel model3 = await ThirdModel1(fname, lname);
          if (login != "" && password != "") {
            flag = 1;
          }
          if (country != "" && city != "") {
            flag = 2;
          }
          if (fname != "" && lname != "") {
            flag = 3;
          }
          if (flag == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginPasswordPage(
                        info: model1.toJson().toString() + ""
                        )));
            setState(() {
              _model1 = model1;
            });
          }
          if (flag == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CountyCityPage(
                        info: model2.toJson().toString() + ""
                        )));
            setState(() {
              _model2 = model2;
            });
          }
          if (flag == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FnameLnamePage(
                        info: model3.toJson().toString() + ""
                        )));
            setState(() {
              _model3 = model3;
            });
          }
        },
        tooltip: 'send post request',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class FirstButton extends StatefulWidget {
  FirstButton({Key key}) : super(key: key);

  @override
  _FirstButtonState createState() => _FirstButtonState();
}

class _FirstButtonState extends State<FirstButton> {
  bool shouldDisplay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                setState(() {
                  shouldDisplay = !shouldDisplay;
                });
              },
              child: shouldDisplay
                  ? Fields(
                      title1: "input login",
                      controller1: loginController,
                      title2: "input password",
                      controller2: passwordController,
                    )
                  : Text('Open login password text fields')),
        ),
      ],
    );
  }
}

class SecondButton extends StatefulWidget {
  SecondButton({Key key}) : super(key: key);

  @override
  _SecondButtonState createState() => _SecondButtonState();
}

class _SecondButtonState extends State<SecondButton> {
  bool shouldDisplay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                setState(() {
                  shouldDisplay = !shouldDisplay;
                });
              },
              child: shouldDisplay
                  ? Fields(
                      title1: "input country",
                      controller1: countryController,
                      title2: "input city",
                      controller2: cityController)
                  : Text('Open country city text fields')),
        ),
      ],
    );
  }
}

class ThirdButton extends StatefulWidget {
  ThirdButton({Key key}) : super(key: key);

  @override
  _ThirdButtonState createState() => _ThirdButtonState();
}

class _ThirdButtonState extends State<ThirdButton> {
  bool shouldDisplay = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                setState(() {
                  shouldDisplay = !shouldDisplay;
                });
              },
              child: shouldDisplay
                  ? Fields(
                      title1: "input first name",
                      controller1: fnameController,
                      title2: "input last name",
                      controller2: lnameController)
                  : Text('Open first name city last name fields')),
        ),
      ],
    );
  }
}

class Fields extends StatelessWidget {
  Fields({
    Key key,
    this.title1,
    this.controller1,
    this.title2,
    this.controller2,
  }) : super(key: key);

  final TextEditingController controller1;
  final TextEditingController controller2;
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        decoration: InputDecoration(
          hintText: title1,
        ),
        controller: controller1,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: title2,
        ),
        controller: controller2,
      ),
    ]);
  }
}
