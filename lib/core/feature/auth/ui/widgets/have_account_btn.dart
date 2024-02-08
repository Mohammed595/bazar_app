import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';

class HaveAccountButton extends StatelessWidget {
  const HaveAccountButton(
      {super.key,
      required this.titleBtn,
      required this.disc,
      required this.func});

  final String titleBtn;
  final String disc;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          disc,
          style: AppTextStyle.size16Width500Gray,
        ),
        TextButton(
          onPressed: func,
          child: Text(
            titleBtn,
            style: AppTextStyle.size16BoldPurple,
          ),
        ),
      ],
    );
  }
}
