import 'package:flutter/material.dart';
import 'layout/ImageDemo.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: const Home(),
      // 全局应用自定义字体
      theme: ThemeData(
          // fontFamily: 'OleoScript',
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
