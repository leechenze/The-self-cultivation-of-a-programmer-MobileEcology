import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Text"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  final String text = 'Hello World Hello China Hello Xi`an Hello Panda';
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(228, 149, 7, 19),
        ),
      ),
      width: 300,
      height: 300,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.fromLTRB(10, 20, 30, 40),
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(-.2),
      transform: Matrix4.skew(.1, .2),
      decoration: BoxDecoration(
          // border: Border(
          //   top: BorderSide(
          //     width: 10,
          //     color: Color.fromARGB(255, 24, 17, 167),
          //   ),
          //   left: BorderSide(
          //     width: 10,
          //     color: Color.fromARGB(255, 24, 17, 167),
          //   ),
          //   right: BorderSide(
          //     width: 10,
          //     color: Color.fromARGB(255, 24, 17, 167),
          //   ),
          //   bottom: BorderSide(
          //     width: 10,
          //     color: Color.fromARGB(255, 24, 17, 167),
          //   ),
          // ),
          /* 简写形式 */
          border: Border.all(
            width: 10,
            color: const Color.fromARGB(255, 25, 4, 131),
          ),
          // borderRadius: BorderRadius.all(Radius.circular(30))),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
          // 渐变色优先级高于color, 设置后将被覆盖;
          color: const Color.fromARGB(255, 25, 108, 11),
          gradient: const LinearGradient(
            colors: [
              Colors.lightBlue,
              Color.fromARGB(255, 9, 24, 137),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 61, 61, 254),
              offset: Offset(0, 0),
              blurRadius: 30,
              spreadRadius: 5,
            )
          ]),
    );
  }
}
