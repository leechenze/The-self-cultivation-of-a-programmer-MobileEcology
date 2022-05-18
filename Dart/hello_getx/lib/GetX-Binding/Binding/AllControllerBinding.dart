import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "../Controller/HomeController.dart";
import "../Controller/MyController.dart";

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MyController>(() => MyController());
  }
}
