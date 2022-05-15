import 'package:flutter/material.dart';
import 'layout/HeroAnimationDemo.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // 全局应用自定义字体
      theme: ThemeData(
          // fontFamily: 'OleoScript',
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
