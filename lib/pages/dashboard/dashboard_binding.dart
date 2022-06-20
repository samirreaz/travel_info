import 'package:get/get.dart';

import '../account/account_controller.dart';
import '../home/home_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    //! it's because home controller is not used in dashboard page
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
  
  }
}
