import 'package:flutter/material.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("StatefulWidgetDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: myState(),
    );
  }
}

class myState extends StatefulWidget {
  myState({Key? key}) : super(key: key);

  @override
  State<myState> createState() => _myStateState();
}

class _myStateState extends State<myState> {
  int _num = 0;

  _increment() {
    setState(() {
      _num++;
    });
  }

  _decrement() {
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _decrement,
            child: Icon(Icons.remove),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('$_num'),
          ),
          ElevatedButton(
            onPressed: _increment,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
