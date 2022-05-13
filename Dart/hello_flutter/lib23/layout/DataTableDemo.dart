import 'package:flutter/material.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DataTableDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: DataTableDemo(),
    );
  }
}

// 声明User类
class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}

class DataTableDemo extends StatefulWidget {
  DataTableDemo({Key? key}) : super(key: key);

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  bool _sortAscending = false;

  List<User> data = [
    User('Trump', 70, selected: true),
    User('Obama', 60, selected: true),
    User('Lincoln', 100, selected: true),
    User('Nixon', 80, selected: true),
    User('Clinton', 90),
  ];

  List<DataRow> _getUserRows() {
    List<DataRow> dataRows = [];
    data.forEach((item) {
      dataRows.add(
        DataRow(
          selected: item.selected,
          onSelectChanged: (selected) {
            print(selected);
            setState(() {
              item.selected = selected ?? false;
            });
          },
          cells: [
            DataCell(Text('${item.name}')),
            DataCell(Text('${item.age}')),
            DataCell(Text('男')),
            DataCell(Text('---')),
          ],
        ),
      );
    });
    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          // 根据第二列的索引值进行排序(第二列是年龄);
          sortColumnIndex: 1,
          // 排序
          sortAscending: _sortAscending,
          // 设置列高度
          dataRowHeight: 100,
          horizontalMargin: 50,
          checkboxHorizontalMargin: 10,
          columnSpacing: 70,
          columns: [
            DataColumn(label: Text('姓名')),
            DataColumn(
              label: Text('年龄'),
              numeric: true,
              onSort: (int columnInd, bool ascending) {
                setState(() {
                  _sortAscending = ascending;
                  if (ascending) {
                    data.sort(((a, b) => a.age.compareTo(b.age)));
                  } else {
                    data.sort(((a, b) => b.age.compareTo(a.age)));
                  }
                });
              },
            ),
            DataColumn(label: Text('性别')),
            DataColumn(label: Text('简介')),
          ],
          // rows: [
          //   DataRow(
          //     cells: [
          //       DataCell(Text('张三')),
          //       DataCell(Text('18')),
          //       DataCell(Text('男')),
          //       DataCell(Text('一个男人')),
          //     ],
          //   ),
          //   DataRow(
          //     cells: [
          //       DataCell(Text('张三')),
          //       DataCell(Text('18')),
          //       DataCell(Text('男')),
          //       DataCell(Text('一个男人')),
          //     ],
          //   ),
          //   DataRow(
          //     cells: [
          //       DataCell(Text('张三')),
          //       DataCell(Text('18')),
          //       DataCell(Text('男')),
          //       DataCell(Text('一个男人')),
          //     ],
          //   ),
          // ],
          rows: _getUserRows(),
        ),
      ),
    );
  }
}
