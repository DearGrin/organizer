import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/screens/dashboard/add_card_widget.dart';
import 'package:flutter/material.dart';

class ChooseOptionPopUp extends StatelessWidget {
  const ChooseOptionPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 760,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 77,
                left: 90,
                bottom: 65,
              ),
              child: CustomText(
                'Выберите способ:',
                20,
                weight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(
                  child: AddCard(
                    text: 'Новая карточка\nэксперимента',
                    byDefault: false,
                  ),
                ),
                Card(
                  child: AddCard(
                    text: 'Заполнить карточку \nпо образцу',
                    byDefault: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
