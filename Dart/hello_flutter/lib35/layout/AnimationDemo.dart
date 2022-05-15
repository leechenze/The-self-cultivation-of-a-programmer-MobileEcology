import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AnimationDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  AnimationDemo({Key? key}) : super(key: key);

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

// 必须混入 SingleTickerProviderStateMixin 才能在vsync后面使用当前的状态组件对象;
class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  // 初始化
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 1. 创建控制器
    controller = AnimationController(
      duration: const Duration(
        milliseconds: 500,
      ),
      // 这里指代的就是 _AnimationDemoState (当前状态组件对象);
      // 之所以能写this, 是因为混入了 SingleTickerProviderStateMixin;
      vsync: this,
    );
    // 2.1声明动画曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    // 2.2设置动画值的范围
    animation = Tween(begin: 50.0, end: 400.0).animate(controller);

    // 3.监听动画
    animation.addListener(() {
      print('===============animation.value===============');
      print(animation.value);
      setState(() {});
    });
    //4.执行动画
    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              controller.forward();
            },
            child: Text('放大'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.reverse();
            },
            child: Text('缩小'),
          ),
          ElevatedButton(
            onPressed: () {
              animation.addStatusListener(
                (status) => {
                  if (status == AnimationStatus.completed)
                    {controller.reverse()}
                  else if (status == AnimationStatus.dismissed)
                    {controller.forward()}
                },
              );
              // 首先要开始一次动画
              controller.forward();
            },
            child: Text('重复执行'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.stop();
            },
            child: Text('停止'),
          ),
          Icon(
            Icons.favorite,
            color: Colors.amber,
            size: animation.value,
          ),
          Opacity(
            opacity: controller.value,
            child: const Text(
              'Hello World',
              style: TextStyle(
                  color: Color.fromARGB(255, 8, 0, 255), fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // 释放动画;
    controller.dispose();
  }
}
