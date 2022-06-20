import 'package:get/get.dart';
import 'package:travel_info/pages/account/account_binding.dart';
import 'package:travel_info/pages/account/account_page.dart';
import 'package:travel_info/pages/details/details_binding.dart';
import 'package:travel_info/pages/details/details_page.dart';
import 'package:travel_info/pages/home/home_binding.dart';
import 'package:travel_info/pages/home/home_page.dart';
import 'package:travel_info/pages/landing/landing_binding.dart';
import 'package:travel_info/pages/landing/landing_page.dart';
import 'package:travel_info/pages/result/result_binding.dart';
import 'package:travel_info/pages/result/result_page.dart';

import '../pages/dashboard/dashboard_binding.dart';
import '../pages/dashboard/dashboard_page.dart';
import '../pages/onboarding/onboarding_binding.dart';
import '../pages/onboarding/onboarding_page.dart';
import 'app_routes.dart';

class AppPage {
  static var list = [
    GetPage(
      name: AppRoutes.ONBOARDING,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAILS,
      page: () => DetailsPage(),
      binding: DetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.RESULT,
      page: () => ResultPage(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: AppRoutes.LANDING,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
  ];
}
