import 'package:flutter/material.dart';
import 'layout/DynamicNavigator.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      // 动态路由
      onGenerateRoute: (RouteSettings setting) {
        // 匹配首页
        if (setting.name == '/') {
          return MaterialPageRoute(
            builder: (context) => Home(),
          );
        }
        if (setting.name == '/product') {
          return MaterialPageRoute(
            builder: (context) => ProductPage(),
          );
        }
        // 匹配 /product/:id
        final uri = Uri.parse(setting.name.toString());
        print('==============uri.pathSegments==============');
        print(uri.pathSegments);
        if (uri.pathSegments.length == 2 &&
            uri.pathSegments.first == 'product') {
          final id = uri.pathSegments[1];
          return MaterialPageRoute(builder: (context) => ProductDetail(id: id));
        }

        // 没有匹配结果跳转至404;
        return MaterialPageRoute(builder: (context) => UnknowPage());
      },
      // 全局应用自定义字体
      theme: ThemeData(
          // fontFamily: 'OleoScript',
          ),
      debugShowCheckedModeBanner: false,
    );
  }
}
