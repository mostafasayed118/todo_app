import 'package:todo_app/core/utils/app_assets.dart';
import 'package:todo_app/core/utils/app_strings.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String description;
  OnBoardingModel(
      {required this.image, required this.title, required this.description});

  static List<OnBoardingModel> onBoardingScreen = [
    OnBoardingModel(
        image: AppAssets.onboarding1,
        title: AppString.onboardingTitleOne,
        description: AppString.onboardingTitleOneDesc),
    OnBoardingModel(
        image: AppAssets.onboarding2,
        title: AppString.onboardingTitleTwo,
        description: AppString.onboardingTitleTwoDesc),
    OnBoardingModel(
        image: AppAssets.onboarding3,
        title: AppString.onboardingTitleThree,
        description: AppString.onboardingTitleThreeDesc),
  ];
}
