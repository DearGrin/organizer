import 'package:first_approval_app/screens/experiment_card/card_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      ///стилей немного - почему бы шрифты, цвета, стили кнопок и тд не вынести сюда?
      theme: ThemeData(
        fontFamily: "Inter",
      ),
      debugShowCheckedModeBanner: false,
      title: 'FA',
      home: const CardPage(),
    );
  }
}
