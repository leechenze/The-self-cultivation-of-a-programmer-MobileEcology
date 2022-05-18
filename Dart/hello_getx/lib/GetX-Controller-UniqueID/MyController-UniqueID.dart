import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    count++;
    // 声明需要更新的 UniqueID;
    update(['jimi_count']);
  }
}
