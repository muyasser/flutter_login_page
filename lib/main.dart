import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      LoginPage.tag: (context) => LoginPage(),
      HomePage.tag: (context) => HomePage(),
    };

    return MaterialApp(
      title: 'Login hero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      routes: routes,
      home: LoginPage(),
    );
  }
}
