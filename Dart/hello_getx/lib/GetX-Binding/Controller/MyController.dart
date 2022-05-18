import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  Rx<double> count = 0.0.obs;
  void increment() {
    count++;
  }
}
