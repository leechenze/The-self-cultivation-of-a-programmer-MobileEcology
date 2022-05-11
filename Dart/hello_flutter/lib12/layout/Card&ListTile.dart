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
        title: const Text("Card&ListTile"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(20),
          color: Color.fromARGB(255, 255, 0, 234),
          shadowColor: Color.fromARGB(255, 0, 64, 255),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: Color.fromARGB(255, 0, 212, 32),
              width: 5,
            ),
          ),
          child: Column(
            children: const [
              ListTile(
                leading: Icon(Icons.abc_outlined, size: 50),
                title: Text(
                  'LeeChenZe',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                subtitle: Text(
                  '董事长',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                subtitle: Text(
                  '电话: 122222222',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                subtitle: Text(
                  '电话: xxxxxxxxxxx',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        Card(
          child: Column(
            children: const [
              ListTile(
                leading: Icon(Icons.abc_outlined, size: 50),
                title: Text(
                  'ZhangSF',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                subtitle: Text(
                  'CTO',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                subtitle: Text(
                  '电话: 122222222',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                subtitle: Text(
                  '电话: xxxxxxxxxxx',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
