import 'package:flutter/material.dart';

class ShowAll extends StatelessWidget {
  const ShowAll({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      /// есть разница между null и пустой функцией в поведении кнопок -
      /// надо учитывать, какое поведение предпочтительнее
      onPressed: () {},
      child: const Text(
        'Показать все',
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 16,

          ///ряд значений у шрифта можно опускать, если они совпадают с заданными параметрами по умлочанию
          fontFamily: "Inter",
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }
}
