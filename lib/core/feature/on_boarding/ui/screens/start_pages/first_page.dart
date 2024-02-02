import 'package:bazar_app/core/feature/on_boarding/ui/widgets/image_title_disc.dart';
import 'package:bazar_app/core/theming/assets_path.dart';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImageAndTitleAndDiscWidget(
      imagePath: AppImages.thirdPageBackground,
      title: 'Now reading books will be easier',
      disc:
          'Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
    );
  }
}
