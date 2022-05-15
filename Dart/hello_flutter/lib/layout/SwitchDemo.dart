import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SwitchDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: SwitchDemo(),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchVal = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          // Android风格
          ListTile(
            leading: Switch(
              value: _switchVal,
              onChanged: (bool val) {
                setState(() {
                  _switchVal = val;
                });
              },
              activeColor: Colors.purple,
              activeTrackColor: Colors.amber,
              inactiveThumbColor: Color.fromARGB(255, 255, 0, 0),
              inactiveTrackColor: Color.fromARGB(255, 0, 26, 255),
            ),
            title: Text('Android的当前状态是${_switchVal ? '选中' : '未选中'}'),
          ),
          // IOS风格
          ListTile(
            leading: CupertinoSwitch(
              value: _switchVal,
              onChanged: (bool val) {
                setState(() {
                  _switchVal = val;
                });
              },
              activeColor: Colors.purple,
              trackColor: Colors.amber,
              thumbColor: Color.fromARGB(255, 255, 0, 0),
            ),
            title: Text('IOS的当前状态是${_switchVal ? '选中' : '未选中'}'),
          ),
        ],
      ),
    );
  }
}
