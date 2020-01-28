import 'package:flutter/material.dart';
import './signup.dart';
import './login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: 'MyHealthKeeper',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new LoginPage()


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

  }
}