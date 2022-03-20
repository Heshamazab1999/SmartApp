import 'package:education_app/routes/app_route.dart';
import 'package:education_app/screens/login_screen/login_screen.dart';
import 'package:education_app/screens/onboarding_screen/onboarding_screen.dart';
import 'package:education_app/screens/splash_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoute.splashScreen, page: () => const SplashScreen()),
    GetPage(
        name: AppRoute.onBoardingScreen, page: () => const OnBoardingScreen()),
    GetPage(name: AppRoute.loginScreen, page: () => const LoginScreen()),
  ];
}
