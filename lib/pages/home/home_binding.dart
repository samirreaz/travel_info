import 'package:get/get.dart';
import 'package:travel_info/pages/home/home_controller.dart';
import 'package:travel_info/pages/result/result_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
