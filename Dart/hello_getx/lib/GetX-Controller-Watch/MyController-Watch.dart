import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  // 定义一个 MyController 继承 GetxController

  Rx<double> count = 0.0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // 监听count的值, count 发生变化时调用;
    ever(count, (callback) {
      print('ever count is $count');
    });
    // 监听多个值, 当它们发生变化时调用
    everAll([count], (callback) {
      print('everAll count is $count');
    });
    // 监听count的值, count 发生变化时调用; 只执行一次;
    once(count, (callback) {
      print('once count is $count');
    });
    // 防抖监听count的值, count 发生变化时调用; 用户停止打字一秒后调用, 主要是防止DDos攻击;
    debounce(count, (callback) {
      print('debounce count is $count');
    });
    // 节流监听count的值, count 发生变化时调用; 忽略三秒内的所有变动
    interval(count, (callback) {
      print('interval count is $count');
    });
  }
}
