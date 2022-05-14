import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Home;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DrawerDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: HomePage(),
      drawer: DrawerDemo(),
      endDrawer: DrawerDemo(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // padding为0可以使背景覆盖状态栏
        padding: EdgeInsets.all(0),
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('初六'),
            accountEmail: Text('Leeczyc@gmail.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/Images/scenery/4d10cb8a8a30e1e55cee0d44b4015d15.jpeg',
                ),
                fit: BoxFit.fill,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Images/scenery/4a3144d175a6b37ecb08d90c11ec342f.jpeg',
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.abc),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('我的'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('首页'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          AboutListTile(
            child: Text('版本'),
            applicationName: "你的应用名称",
            applicationVersion: '0.0.1',
            applicationIcon: Image.asset(
              'assets/Images/scenery/46a6e37654685ac25e0aeb18ee2a4659.jpeg',
              width: 50,
              height: 50,
            ),
            applicationLegalese: "应用法律条款",
            icon: const CircleAvatar(
              child: Text('V'),
            ),
            aboutBoxChildren: [
              Text('条例一'),
            ],
          )
        ],
      ),
    );
  }
}
