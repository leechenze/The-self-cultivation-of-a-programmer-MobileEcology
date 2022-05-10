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
        title: const Text("Button"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
            onPressed: () {
              print('触发 TextButton');
            },
            onLongPress: () {
              print('触发长按 TextButton');
            },
            child: const Text('TextButton'),
          ),
          ElevatedButton(
            onPressed: () {
              print('触发 ElevatedButton');
            },
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () {
              print('触发 OutlinedButton');
            },
            child: const Text('OutlinedButton'),
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 30,
                  ),
                ),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    // 按下按钮时的前景色
                    return const Color.fromARGB(255, 1, 198, 70);
                  }
                  // 默认状态颜色
                  return const Color.fromARGB(255, 0, 249, 241);
                }),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    // 按下按钮时的前景色
                    return const Color.fromARGB(255, 0, 249, 241);
                  }
                  // 默认状态颜色
                  return const Color.fromARGB(255, 1, 198, 70);
                }),
                shadowColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 229, 255, 0)),
                elevation: MaterialStateProperty.all(10),
                side: MaterialStateProperty.all(
                  const BorderSide(
                    color: Color.fromARGB(255, 3, 140, 135),
                    width: 2,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(
                    // const CircleBorder(
                    side: BorderSide(
                      color: Color.fromARGB(255, 3, 140, 135),
                      width: 0,
                    ),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(const Size(150, 60)),
                // 设置水波纹效果
                overlayColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 217, 0, 72))),
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              // 如果child中有style时, 会将这里的style覆盖
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 0, 255, 238),
                ),
              ),
            ),
            child: OutlinedButton(
              child: const Text('outlinedButton'),
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  // 如果child中有style时, 会将data中的style覆盖
                  const Color.fromARGB(255, 5, 253, 26),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              print('触发 IconButton');
            },
            icon: Icon(Icons.abc),
            color: Colors.amber,
            // 水波纹颜色
            splashColor: Color.fromARGB(255, 163, 244, 0),
            // 高亮颜色(会将splashColor效果覆盖);
            highlightColor: Colors.blueAccent,
            tooltip: 'IconButton',
          ),
          // 构造函数声明Button
          TextButton.icon(
            icon: Icon(Icons.abc_rounded),
            label: Text('构造函数 TextButton'),
            onPressed: () {
              print('构造函数 TextButton');
            },
          ),
          // 按钮组
          Container(
            color: Colors.amber,
            width: double.infinity,
            child: ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('ButtonBarText'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ButtonBarText'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('ButtonBarText'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('ButtonBarOutlined'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 0, 200, 255),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.amber,
                    ),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // 回退按钮
          BackButton(
            color: Colors.blue,
            onPressed: () {
              print('BackButton');
            },
          ),
          // 关闭按钮
          CloseButton(
            color: Colors.blue,
            onPressed: () {
              print('CloseButton');
            },
          ),
          // 浮动按钮(一般写在 Scaffold 下)
          FloatingActionButton(
            onPressed: () {},
            tooltip: '浮动按钮',
            child: Icon(Icons.add),
            backgroundColor: Color.fromARGB(255, 117, 175, 0),
            elevation: 5,
          )
        ],
      ),
    );
  }
}
