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
        title: const Text("Wrap"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  FlexDemo({Key? key}) : super(key: key);

  final List<Map<String, String>> _ChinaPerson = [
    {
      "CountryName": 'China',
      "PersonName": "LeeChenZe",
    },
    {
      "CountryName": 'China',
      "PersonName": "ZhangSF",
    },
    {
      "CountryName": 'China',
      "PersonName": "ZhangWQ",
    },
    {
      "CountryName": 'China',
      "PersonName": "QinLi",
    },
  ].toList();

  List<Widget> ChinaCountry() => _ChinaPerson.map((item) {
        return Chip(
          avatar: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 255, 0, 0),
            child: Text(item['CountryName'].toString()),
          ),
          label: Text(item['PersonName'].toString()),
        );
      }).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 因为内容溢出 一行无法放下Chip而报错, 此时使用Wrap解决;
        // Row(
        Wrap(
          alignment: WrapAlignment.center,
          children: const [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 29, 245),
                child: Text('United States'),
              ),
              label: Text('Trump'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 29, 245),
                child: Text('United States'),
              ),
              label: Text('Obama'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 29, 245),
                child: Text('United States'),
              ),
              label: Text('Lincoln'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 29, 245),
                child: Text('United States'),
              ),
              label: Text('Clinton'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 29, 245),
                child: Text('United States'),
              ),
              label: Text('Nixon'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 29, 245),
                child: Text('United States'),
              ),
              label: Text('Douglas'),
            ),
          ],
        ),
        Wrap(
          children: ChinaCountry(),
          spacing: 20,
          alignment: WrapAlignment.end,
          runSpacing: 10,
        )
      ],
    );
  }
}
