import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asdf',
      home: const Home(),
      // 全局应用自定义字体
      theme: ThemeData(
        fontFamily: 'OleoScript',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Text"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  String text =
      'Flutter 是由谷歌公司开发的一款免费的,开源的,基于Dart语言的UI框架, 可以快速的在IOS,Android上构建高质量的原生应用, 它最大的特点就是跨平台和高性能;';

  TextDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      text,
      style: const TextStyle(
        // color: Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5),
        // color: Color.fromARGB(255, 66, 165, 245),
        // color: Color.fromRGBO(66, 165, 245, 0.9),
        color: Colors.blueAccent,
      ),
    ));
  }
}
