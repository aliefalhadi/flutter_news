import 'package:flutter/material.dart';
import 'package:flutternews4/ui_page/LoginPage.dart';
import 'package:flutternews4/ui_page/RegisterPage.dart';

import 'Dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color:  Colors.black
          )
        )
      ),
      home: LoginPage(),
    );
  }
}
