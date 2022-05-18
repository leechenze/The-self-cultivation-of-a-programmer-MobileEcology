import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service extends GetxService {
  int count = 0;

  Future getCounter() async {
    // SharedPreferences 一种持久化的轻量级存储类
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int count = (prefs.getInt("counter") ?? 0) + 1;
    print("count 的值为: $count");
    await prefs.setInt("counter", count);
  }
}
