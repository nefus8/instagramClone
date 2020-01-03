import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/feed_page.dart';
import 'package:instagram_clone/pages/login_page.dart';
import 'package:instagram_clone/pages/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget _getScreenId() {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return FeedPage();
        } else {
          return LoginPage();
        }
      },
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Instagram Clone', debugShowCheckedModeBanner: false, home: _getScreenId(), routes: {
      LoginPage.id: (context) => LoginPage(),
      SignupPage.id: (context) => SignupPage(),
      FeedPage.id: (context) => FeedPage(),
    });
  }
}
