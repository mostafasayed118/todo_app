import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/core/utils/app_assets.dart';
import 'package:todo_app/core/utils/app_colors.dart';
import 'package:todo_app/core/utils/app_strings.dart';
import 'package:todo_app/features/auth/data/model/on_boarding_model.dart';
import 'package:todo_app/features/task/presentiation/screens/home_page_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: PageView.builder(
            itemCount: OnBoardingModel.onBoardingScreen.length,
            controller: controller,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  index != 2
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              controller.jumpToPage(2);
                            },
                            child: Text(AppString.skip,
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColor.white.withOpacity(0.44),
                                    )),
                          ),
                        )
                      : SizedBox(
                          height: 50,
                        ),
                  const SizedBox(
                    height: 16,
                  ),
                  //Image
                  Image.asset(OnBoardingModel.onBoardingScreen[index].image),
                  const SizedBox(
                    height: 16,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: AppColor.primary,
                      dotColor: AppColor.white,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 8,
                    ),
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  // onboarding title String
                  Text(
                    OnBoardingModel.onBoardingScreen[index].title,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 32),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  // onboarding Subtitle String
                  Text(
                      textAlign: TextAlign.center,
                      OnBoardingModel.onBoardingScreen[index].description,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(fontSize: 16)),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      index != 0
                          ? TextButton(
                              onPressed: () {
                                controller.previousPage(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn);
                              },
                              child: Text(
                                AppString.back,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                            )
                          : Container(),
                      const Spacer(),
                      index != 2
                          ? ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {
                                controller.nextPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Text(
                                AppString.next,
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: AppColor.white,
                                ),
                              ),
                            )
                          : ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {
                                // navigator();
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomePageScreen();
                                }));
                              },
                              child: Text(
                                AppString.getStarted,
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
