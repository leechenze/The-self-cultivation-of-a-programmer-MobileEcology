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
        title: const Text("Column & Row"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  final String text = 'Hello World Hello China Hello Xi`an Hello Panda';
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 174, 26),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.abc_outlined,
            size: 30,
          ),
          const Icon(
            Icons.access_alarm,
            size: 30,
          ),
          const Icon(
            Icons.accessible,
            size: 30,
          ),
          const Icon(
            Icons.airline_stops,
            size: 30,
          ),
          Container(
            color: const Color.fromARGB(255, 248, 137, 0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(
                  Icons.abc_outlined,
                  size: 30,
                ),
                Icon(
                  Icons.access_alarm,
                  size: 30,
                ),
                Icon(
                  Icons.accessible,
                  size: 30,
                ),
                Icon(
                  Icons.airline_stops,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
