import 'package:get/get.dart';
import 'package:travel_info/pages/landing/landing_controller.dart';


class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(() => LandingController());
  }
}