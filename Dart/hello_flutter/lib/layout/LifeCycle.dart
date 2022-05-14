import 'package:flutter/material.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("LifeCycle"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: MyStateParent(),
    );
  }
}

class MyStateParent extends StatefulWidget {
  MyStateParent({Key? key}) : super(key: key);

  @override
  State<MyStateParent> createState() => _MyStateParentState();
}

class _MyStateParentState extends State<MyStateParent> {
  int _num = 0;

  @override
  void initState() {
    super.initState();
    print('initState');
    _num = 1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.deactivate();
    print('dispose');
  }

  _increment() {
    setState(() {
      _num++;
    });
  }

  _decrement() {
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return ShareDataWidget(
      num: this._num,
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _decrement,
              child: Icon(Icons.remove),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: MyStateSon(),
            ),
            ElevatedButton(
              onPressed: _increment,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStateSon extends StatefulWidget {
  MyStateSon({Key? key}) : super(key: key);

  @override
  State<MyStateSon> createState() => _MyStateSonState();
}

class _MyStateSonState extends State<MyStateSon> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ShareDataWidget.of(context)?.num.toString() ?? '',
    );
  }
}

// 数据共享的组件
class ShareDataWidget extends InheritedWidget {
  int num = 0;
  final Widget child;
  // required 声明 num是必传项
  ShareDataWidget({Key? key, required this.child, required this.num})
      : super(key: key, child: child);

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  // 通知组件更新
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}
