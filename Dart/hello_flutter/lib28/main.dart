import 'package:flutter/material.dart';
import 'layout/NamedNavigator.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      // home: const Home(),

      // 声明路由
      routes: {
        'home': (context) => const Home(),
        'product': (context) => const ProductPage(),
      },
      initialRoute: 'home',
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(
        builder: (BuildContext context) => const UnknowPage(),
      ),
      // 全局应用自定义字体
      theme: ThemeData(
          // fontFamily: 'OleoScript',
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
