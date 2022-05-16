import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BasicsThemeDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: BasicsThemeDemo(),
    );
  }
}

class BasicsThemeDemo extends StatelessWidget {
  const BasicsThemeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Theme(
            data: ThemeData(
              iconTheme: IconThemeData(color: Colors.orange),
            ),
            child: Icon(Icons.ads_click),
          ),
          Text(
            'BasicsThemeDemo',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ElevatedButton'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('RaisedButton'),
          ),
          Icon(Icons.abc),
          Icon(Icons.construction),
          Card(
            margin: const EdgeInsets.all(20),
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
        ],
      ),
    );
  }
}
