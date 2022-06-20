import 'package:get/get.dart';

class AccountController extends GetxController {
  String name = 'Mainur Ashraf Musfique';
  String email = 'mainurmushfique2017@gmail.com';
  String phone = '+880 1940377959';
  RxInt counter = 0.obs;
  void increaseCounter() {
    counter++;
    update();
  }
}
