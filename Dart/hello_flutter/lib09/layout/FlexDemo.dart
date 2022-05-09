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
        title: const Text("Flex"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  final String text = 'Hello World Hello China Hello Xi`an Hello Panda';
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Color.fromARGB(255, 0, 242, 255),
              height: 50,
              width: 100,
            ),
            // 验证Expanded
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 0, 238),
                height: 50,
              ),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // 声明水平方向排列
          textDirection: TextDirection.ltr,
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
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                // 在Expanded中声明width 不生效,要使用flex属性
                // width: 100,
                height: 100,
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 17, 255, 0),
                // 在Expanded中声明width 不生效,要使用flex属性
                // width: 100,
                height: 100,
              ),
              flex: 1,
            )
          ],
        ),
        Container(
          height: 100,
          margin: EdgeInsets.all(50),
          child: Flex(
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                child: Container(
                  color: Colors.amber,
                  // 在Expanded中声明width 不生效,要使用flex属性
                  // width: 100,
                  height: 100,
                ),
                flex: 2,
              ),
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 17, 255, 0),
                  // 在Expanded中声明width 不生效,要使用flex属性
                  // width: 100,
                  height: 100,
                ),
                flex: 1,
              )
            ],
          ),
        )
      ],
    );
  }
}
