import 'package:get/get.dart';
import 'package:travel_info/pages/home/home_page.dart';

class ResultConller extends GetxController {
  List filterBus = Get.arguments;
  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete {
    HomePage.getBusList = [];
    return super.onDelete;
  }
}
