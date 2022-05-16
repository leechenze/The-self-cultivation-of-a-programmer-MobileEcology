import 'package:flutter/material.dart';
// import 'layout/BasicsThemeDemo.dart';
import 'layout/AdaptiveMobileTheme.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // 基础主题配置
      // theme: ThemeData(
      //   primaryColor: Colors.red,
      //   accentColor: Colors.yellow,
      //   appBarTheme: const AppBarTheme(color: Colors.red),
      //   buttonTheme: const ButtonThemeData(
      //     buttonColor: Colors.purple,
      //     textTheme: ButtonTextTheme.accent,
      //     splashColor: Colors.red,
      //   ),
      //   textTheme: const TextTheme(
      //     subtitle1: TextStyle(
      //       fontSize: 30,
      //       color: Colors.green,
      //     ),
      //   ),
      //   iconTheme: const IconThemeData(
      //     color: Colors.cyan,
      //     size: 50,
      //   ),
      //   cardTheme: CardTheme(
      //     color: const Color.fromARGB(255, 128, 247, 2),
      //     shape: Border.all(width: 10, color: Colors.red),
      //     elevation: 20,
      //   ),
      // ),
      // 适配终端的主题(Flutter内置);
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // 适配终端的主题(自定义);
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
