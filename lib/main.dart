import 'package:flutter/material.dart';

import 'package:innocart/signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: const MyHomePage(title: 'Flutter Demo Home Page'),
      
    );
  }
}



