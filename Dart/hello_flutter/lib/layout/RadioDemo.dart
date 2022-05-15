import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("RadioDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: RadioDemo(),
    );
  }
}

class RadioDemo extends StatefulWidget {
  RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('男'),
              Radio(
                value: 1,
                groupValue: this.gender,
                onChanged: (val) {
                  setState(() {
                    this.gender = val as int;
                  });
                },
              ),
              Text('女'),
              Radio(
                value: 0,
                groupValue: this.gender,
                onChanged: (val) {
                  setState(() {
                    this.gender = val as int;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.gender == 0 ? '女' : '男'),
            ],
          ),
          RadioListTile(
            value: 1,
            groupValue: this.gender,
            onChanged: (val) {
              setState(() {
                this.gender = val as int;
              });
            },
            title: Text('👨'),
            subtitle: Text('Leeeeeecs'),
            secondary: Icon(Icons.male),
          ),
          RadioListTile(
            value: 0,
            groupValue: this.gender,
            onChanged: (val) {
              setState(() {
                this.gender = val as int;
              });
            },
            title: Text('👩'),
            subtitle: Text('Leeeeeech'),
            secondary: Icon(Icons.female),
            selected: this.gender == 0,
            selectedTileColor: Color.fromARGB(255, 255, 0, 183),
          ),
        ],
      ),
    );
  }
}
