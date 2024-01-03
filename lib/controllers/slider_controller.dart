import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opactiy = 0.4.obs;

  setOpactiy(double value) {
    opactiy.value = value;

  }
}
