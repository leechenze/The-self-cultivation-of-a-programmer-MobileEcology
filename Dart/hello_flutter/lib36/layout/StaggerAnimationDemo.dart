import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("StaggerAnimationDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: StaggerAnimationDemo(),
    );
  }
}

class StaggerAnimationDemo extends StatefulWidget {
  StaggerAnimationDemo({Key? key}) : super(key: key);

  @override
  State<StaggerAnimationDemo> createState() => _StaggerAnimationDemoState();
}

// 必须混入 SingleTickerProviderStateMixin 才能在vsync后面使用当前的状态组件对象;
class _StaggerAnimationDemoState extends State<StaggerAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> sizeAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<double> rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 1.创建控制器
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    // 2.创建动画
    animation = CurvedAnimation(
      parent: animationController,
      curve: Interval(0.0, 0.5),
    )..addListener(() {
        setState(() {});
      });

    // 3.重复运行动画
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    // 4.设置其他动画 (animate中可以传 controll 也可以传 animation, 这俩都是继承自Animation)
    sizeAnimation = Tween(begin: 0.0, end: 200.0).animate(animation);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 0.8, curve: Curves.bounceIn),
      ),
    )..addListener(() {});
    rotationAnimation = Tween(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.easeIn),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // 首先要开始一次动画
              animationController.forward();
            },
            child: Text('重复执行'),
          ),
          ElevatedButton(
            onPressed: () {
              animationController.stop();
            },
            child: Text('停止'),
          ),
          Opacity(
            opacity: animationController.value,
            child: Transform.rotate(
              angle: rotationAnimation.value,
              child: Container(
                width: sizeAnimation.value,
                height: sizeAnimation.value,
                color: colorAnimation.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
