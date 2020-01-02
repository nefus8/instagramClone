import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_page.dart';
import 'package:instagram_clone/pages/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SignupPage.id: (context) => SignupPage(),
      }
    );
  }
}