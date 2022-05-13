import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SharedPreferencesDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: SharedPreferencesDemo(),
    );
  }
}

class SharedPreferencesDemo extends StatelessWidget {
  SharedPreferencesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('递增'),
          ),
          ElevatedButton(
            onPressed: _decrementCounter,
            child: Text('递减'),
          ),
          ElevatedButton(
            onPressed: _removeCounter,
            child: Text('删除'),
          ),
        ],
      ),
    );
  }

  _incrementCounter() async {
    // 获取保存实例
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times');
    prefs.setInt('counter', counter);
  }

  _decrementCounter() async {
    // 获取保存实例
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = prefs.getInt('counter') ?? 0;
    if (counter > 0) counter--;
    print('Pressed $counter times');
    prefs.setInt('counter', counter);
  }

  _removeCounter() async {
    // 获取保存实例
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('counter');
    print('removed counter');
  }
}
