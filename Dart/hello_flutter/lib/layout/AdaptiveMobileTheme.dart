import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AdaptiveMobileTheme"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: AdaptiveMobileTheme(),
    );
  }
}

class AdaptiveMobileTheme extends StatelessWidget {
  const AdaptiveMobileTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// 声明自定义适配终端的主题
class CustomTheme {
  // 白亮主题
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.green,
    appBarTheme: const AppBarTheme(color: Colors.green),
  );
  // 黑暗主题
  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black87,
    appBarTheme: const AppBarTheme(color: Colors.black87),
  );
}
