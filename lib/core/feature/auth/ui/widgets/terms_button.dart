import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';

class TermsButton extends StatelessWidget {
  const TermsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'By clicking Register, you agree to our',
          style: AppTextStyle.size15Width500Gray,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Terms and Data Policy.',
            style: AppTextStyle.size14BoldPurple,
          ),
        ),
      ],
    );
  }
}
