import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 底部导航集合
  final List<BottomNavigationBarItem> bottomNavItems = const [
    BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 80, 254, 0),
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 0, 255, 255),
      icon: Icon(Icons.message),
      label: "Message",
    ),
    BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 127, 0, 254),
      icon: Icon(Icons.shopping_cart),
      label: "ShopCart",
    ),
    BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 255, 0, 162),
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  // 页面集合
  final List<Widget> pages = const [
    Center(
      child: Text('Home', style: TextStyle(fontSize: 30)),
    ),
    Center(
      child: Text('Message', style: TextStyle(fontSize: 30)),
    ),
    Center(
      child: Text('ShopCart', style: TextStyle(fontSize: 30)),
    ),
    Center(
      child: Text('Profile', style: TextStyle(fontSize: 30)),
    ),
  ];

  // 声明下标
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void _changePageIndex(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BottomNavigationBarDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _changePageIndex(index);
        },
      ),
      body: pages[currentIndex],
    );
  }
}
