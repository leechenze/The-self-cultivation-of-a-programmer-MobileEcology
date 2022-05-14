import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 2.创建Provider 注册数据模型
    return ChangeNotifierProvider(
      create: (BuildContext context) => new LikesModel(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Provider"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

// 1.创建数据模型
class LikesModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  incrementCounter() {
    // 累加
    _counter++;

    // 通过UI更新 (固定写法不可改);
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // 在子组件中使用数据模型 (上下文方式)
          Text('${context.watch<LikesModel>().counter}'),
          TextButton(
            // 在子组件中使用数据模型 (静态方法方式)
            onPressed: Provider.of<LikesModel>(context).incrementCounter,
            child: Icon(Icons.thumb_up),
          ),
        ],
      ),
    );
  }
}
