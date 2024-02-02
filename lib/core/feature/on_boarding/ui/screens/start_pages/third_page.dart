import 'package:bazar_app/core/feature/on_boarding/ui/widgets/image_title_disc.dart';
import 'package:bazar_app/core/theming/assets_path.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImageAndTitleAndDiscWidget(
        imagePath: AppImages.firatPageBackground,
        title: 'Start Your Adventure',
        disc:
            'Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let\'s go!');
  }
}
