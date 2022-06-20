import 'package:get/get.dart';
import 'package:travel_info/pages/result/result_controller.dart';

class ResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultConller>(() => ResultConller());
  }
}