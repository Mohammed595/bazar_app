import 'package:bazar_app/core/feature/on_boarding/providers/smooth_controller.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/start_pages/first_page.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/start_pages/second_page.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/screens/start_pages/third_page.dart';
import 'package:bazar_app/core/feature/on_boarding/ui/widgets/getstarted_button.dart';
import 'package:bazar_app/core/provoders/prefs_provider.dart';
import 'package:bazar_app/core/theming/colors.dart';
import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartControlPage extends ConsumerWidget {
  const StartControlPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final indexSoomth = ref.watch(indexSmoothProvider);
    final pageController = PageController(initialPage: indexSoomth);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                    child: TextButton(
                        onPressed: () {
                          pageController.jumpToPage(2);
                        },
                        child: Text(
                          'Skip',
                          style: AppTextStyle.size14BoldPurple,
                        )),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    pageController.jumpToPage(value);
                    ref.read(indexSmoothProvider.notifier).changeIndex(value);
                    // print(value);
                  },
                  children: const [
                    FirstPage(),
                    SecondPage(),
                    ThirdPage(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 23.h),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  onDotClicked: (index) {
                    pageController.jumpToPage(index);
                    ref.read(indexSmoothProvider.notifier).changeIndex(index);
                    print(index);
                  },
                  effect: SlideEffect(
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.mainPurpleColor,
                    // if active make size 8 else 4
                    dotHeight: 8.h,
                    dotWidth: 8.w,
                  ),
                ),
              ),
              Column(
                children: [
                  GetStatedButtonWidget(
                    title: indexSoomth == 2 ? 'get Started' : 'Continue',
                    func: () {
                      if (indexSoomth == 1 || indexSoomth == 0) {
                        pageController.jumpToPage(indexSoomth + 1);
                        print('>> ${ref.read(indexSmoothProvider)}');
                      } else {
                        ref.read(prefsProvider).setASPassed();

                        print('Dont Change state');
                      }
                    },
                    containarColor: AppColors.mainPurpleColor,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  GetStatedButtonWidget(
                    title: 'Sign in',
                    func: () {
                      // ref.read(prefsProvider).setASPassed();
                      // SharedPrefnsSirves.setASPassed;
                      print('Dont Change state');
                    },
                    containarColor: const Color(0xffFAF9FD),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
