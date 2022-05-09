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
        title: const Text("Position&Stack"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        textDirection: TextDirection.ltr,
        alignment: AlignmentDirectional.centerStart,
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 0, 41, 207),
            radius: 200,
          ),
          Positioned(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 170, 0, 182),
              child: const Text(
                'Hot',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 26),
                  fontSize: 50,
                ),
              ),
            ),
            top: 0,
            right: 0,
          ),
          const Text(
            'Nsormal',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 242, 255),
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
