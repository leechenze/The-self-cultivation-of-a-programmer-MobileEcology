import 'dart:ffi';

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
        title: const Text("ImageDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/Images/course/WechatIMG96.png',
          width: double.infinity,
          height: 350,
          fit: BoxFit.contain,
          repeat: ImageRepeat.repeat,
          colorBlendMode: BlendMode.colorBurn,
          color: Colors.green,
        ),
        // Image.network('https://img-home.csdnimg.cn/images/20220510045548.jpg'),
      ],
    );
  }
}
