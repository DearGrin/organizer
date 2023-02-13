import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class PublicButton extends StatelessWidget {
  const PublicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const CustomText(
              'Публиковать',
              10,
              weight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
