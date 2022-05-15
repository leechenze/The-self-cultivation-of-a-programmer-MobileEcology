import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CheckboxDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: CheckboxDemo(),
    );
  }
}

class CheckboxDemo extends StatefulWidget {
  CheckboxDemo({Key? key}) : super(key: key);

  @override
  State<CheckboxDemo> createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _male = true;
  bool _female = false;
  bool _transgender = true;
  bool _value1 = true;
  bool _value2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            value: _male,
            onChanged: (val) {
              setState(() {
                this._male = val as bool;
              });
            },
          ),
          title: Text('男'),
        ),
        ListTile(
          leading: Checkbox(
            value: _female,
            onChanged: (val) {
              setState(() {
                this._female = val as bool;
              });
            },
          ),
          title: Text('女'),
        ),
        ListTile(
          leading: Checkbox(
            value: _transgender,
            onChanged: (val) {
              setState(() {
                this._transgender = val as bool;
              });
            },
            activeColor: Color.fromARGB(255, 183, 0, 238),
            checkColor: Color.fromARGB(255, 0, 255, 242),
          ),
          title: Text('变性'),
        ),
        CheckboxListTile(
          secondary: Icon(
            Icons.settings,
            size: 50,
          ),
          title: Text('Leeeeeeeeecs'),
          subtitle: Text('Leeeeeeeeecs'),
          value: _value1,
          onChanged: (val) {
            setState(() {
              _value1 = val as bool;
            });
          },
          activeColor: Colors.green,
          checkColor: Color.fromARGB(255, 255, 255, 1),
          selected: this._value1,
        ),
        CheckboxListTile(
          secondary: Icon(
            Icons.settings,
            size: 50,
          ),
          title: Text('Leeeeeeeeecs'),
          subtitle: Text('Leeeeeeeeecs'),
          value: _value2,
          onChanged: (val) {
            setState(() {
              _value2 = val as bool;
            });
          },
        ),
      ],
    );
  }
}
