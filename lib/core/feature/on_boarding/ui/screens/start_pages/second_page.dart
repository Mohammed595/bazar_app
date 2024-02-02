import 'package:bazar_app/core/feature/on_boarding/ui/widgets/image_title_disc.dart';
import 'package:bazar_app/core/theming/assets_path.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImageAndTitleAndDiscWidget(
        imagePath: AppImages.secondPageBackground,
        title: 'Your Bookish Soulmate Awaits',
        disc:
            'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.');
  }
}
