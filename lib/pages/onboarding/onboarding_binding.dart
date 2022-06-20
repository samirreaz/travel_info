import 'package:get/get.dart';
import 'package:travel_info/pages/onboarding/onboarding_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingContoller>(() => OnboardingContoller());
    //Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
