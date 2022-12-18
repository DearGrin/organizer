import 'package:flutter/material.dart';
import 'fa_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      debugShowCheckedModeBanner: false,
      title: 'FA',
      home: const FaApp(),
    );
  }
}
