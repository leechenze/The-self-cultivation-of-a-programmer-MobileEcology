import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  // 定义一个 MyController 继承 GetxController

  // Teacher teacher = Teacher();
  Rx<Teacher> teacher = Teacher('Jimi', 10).obs;

  // 第一种方式
  // void convertToUpperCase() {
  //   teacher.name.value = teacher.name.value.toUpperCase();
  //   super.update();
  // }

  // void convertToLowerCase() {
  //   teacher.name.value = teacher.name.value.toLowerCase();
  //   super.update();
  // }

  // 第二种方式
  void convertToUpperCase() {
    teacher.update((val) {
      teacher.value.name = teacher.value.name.toString().toUpperCase();
      print(teacher.value.name);
    });
  }

  void convertToLowerCase() {
    teacher.update(
      (val) {
        teacher.value.name = teacher.value.name.toString().toLowerCase();
      },
    );
  }
}

class Teacher {
  // 第一种方式
  // Rx name = "Jimi".obs;
  // Rx age = 18.obs;

  // 第二种方式
  String name;
  num age;
  Teacher(this.name, this.age);
}
