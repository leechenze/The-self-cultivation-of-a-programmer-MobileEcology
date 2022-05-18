// TODO Implement this library.
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class GetWidgetController extends GetxController {
  Rx<double> count = 0.0.obs;
  void increment() {
    count++;
  }
}
