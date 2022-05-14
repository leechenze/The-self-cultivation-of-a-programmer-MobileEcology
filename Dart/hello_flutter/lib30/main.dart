import 'package:flutter/material.dart';
import 'layout/RouteArguments.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      // 命名路由
      routes: {
        'home': (context) => const Home(),
        'product': (context) => const ProductPage(),
        'productDetail': (context) => ProductDetail(),
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
