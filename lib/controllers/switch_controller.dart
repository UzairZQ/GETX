import 'package:get/get.dart';

class SwithcController extends GetxController {
  RxBool notification = false.obs;

  setSwitch(bool value) {
    notification.value = value;
  }
}
