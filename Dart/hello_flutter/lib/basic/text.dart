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
      body: TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  String text =
      'Flutter 是由谷歌公司开发的一款免费的,开源的,基于Dart语言的UI框架, 可以快速的在IOS,Android上构建高质量的原生应用, 它最大的特点就是跨平台和高性能;';

  TextDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'OleoScript',
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
            decorationThickness: 10,
            decorationStyle: TextDecorationStyle.wavy,
          ),
          textAlign: TextAlign.right,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        RichText(
          text: const TextSpan(
            text: 'Hello',
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 50,
              fontFamily: 'OleoScript',
            ),
            children: [
              TextSpan(
                text: 'World',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.purple,
                  fontFamily: 'OleoScript',
                ),
                children: [
                  TextSpan(
                    text: 'Hello Xi`an',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontFamily: 'OleoScript',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
