import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WidgetI18nDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: WidgetI18nDemo(),
    );
  }
}

class WidgetI18nDemo extends StatefulWidget {
  WidgetI18nDemo({Key? key}) : super(key: key);

  @override
  State<WidgetI18nDemo> createState() => _WidgetI18nDemoState();
}

class _WidgetI18nDemoState extends State<WidgetI18nDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _showDatePicker(context),
          _showDatePickerForYear(context),
          _showDatePickerForInput(context),
          _calendarDatePicker(),
          _calendarDatePickerForYear(),
        ],
      ),
    );
  }

  ElevatedButton _showDatePicker(context) {
    return ElevatedButton(
      child: Text('ShowDatePicker'),
      onPressed: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(), // 初始化选中日期
          // 日期选择模式，默认为天数选择
          initialDatePickerMode: DatePickerMode.day,
          firstDate: DateTime(2020, 6), // 开始日期
          lastDate: DateTime(2022, 6), // 结束日期
          initialEntryMode: DatePickerEntryMode.calendar, // 日历弹框样式
          currentDate: DateTime.now(), // 当前日期
          helpText: "日期选择器", // 左上方提示
          cancelText: "取消", // 取消按钮文案
          confirmText: "确定", // 确认按钮文案
          // 设置不可选日期
          selectableDayPredicate: (dayTime) {
            if (dayTime == DateTime(2022, 1, 15)) {
              return false;
            }
            return true;
          },
        );
      },
    );
  }

  ElevatedButton _showDatePickerForYear(context) {
    return ElevatedButton(
      child: Text('ShowDatePickerForYear'),
      onPressed: () {
        showDatePicker(
          context: context,
          // 初始化选中日期
          initialDate: DateTime.now(),
          // 日期选择模式，默认为天数选择
          initialDatePickerMode: DatePickerMode.year,
          // 开始日期
          firstDate: DateTime(2015, 6),
          // 结束日期
          lastDate: DateTime(2025, 6),
          // 当前日期
          currentDate: DateTime.now(),
          // 左上方提示
          helpText: "年份选择器",
          // 取消按钮文案
          cancelText: "取消",
          // 确认按钮文案
          confirmText: "确认",
        );
      },
    );
  }

  ElevatedButton _showDatePickerForInput(context) {
    return ElevatedButton(
      child: Text('ShowDatePickerForInput'),
      onPressed: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(), // 初始化选中日期
          // 日期选择模式，默认为天数选择
          initialDatePickerMode: DatePickerMode.day,
          firstDate: DateTime(2020, 6), // 开始日期
          lastDate: DateTime(2022, 6), // 结束日期
          initialEntryMode: DatePickerEntryMode.input, // 日历弹框样式
          currentDate: DateTime.now(), // 当前日期
          helpText: "日期选择器", // 左上方提示
          cancelText: "取消", // 取消按钮文案
          confirmText: "确定", // 确认按钮文案
          // 设置不可选日期
          selectableDayPredicate: (dayTime) {
            if (dayTime == DateTime(2022, 1, 15)) {
              return false;
            }
            return true;
          },
        );
      },
    );
  }

  CalendarDatePicker _calendarDatePicker() {
    return CalendarDatePicker(
      initialCalendarMode: DatePickerMode.day, // 日期选择样式
      initialDate: DateTime.now(), // 初始化选中日期~
      currentDate: DateTime.now(), // 当前日期~
      firstDate: DateTime(2010, 9, 10), // 开始日期
      lastDate: DateTime(2030, 9, 10), // 结束日期
      // 选中日期改变回调函数
      onDateChanged: (dateTime) {
        print("选择日期 $dateTime");
      },
      // 月份改变回调函数
      onDisplayedMonthChanged: (dateTime) {
        print("选择月份 $dateTime");
      },
      // 日期是否可选(返回 false 表示不可选)
      selectableDayPredicate: (dayTime) {
        if (dayTime == DateTime(2021, 1, 15)) {
          return false;
        }
        return true;
      },
    );
  }

  CalendarDatePicker _calendarDatePickerForYear() {
    return CalendarDatePicker(
        initialCalendarMode: DatePickerMode.year, // 日期选择样式
        initialDate: DateTime.now(), // 初始化选中日期~
        currentDate: DateTime.now(), // 当前日期~
        firstDate: DateTime(2010, 9, 10), // 开始日期
        lastDate: DateTime(2030, 9, 10), // 结束日期
        // 选中日期改变回调函数
        onDateChanged: (dateTime) {
          print("选择日期 $dateTime");
        },
        // 月份改变回调函数
        onDisplayedMonthChanged: (dateTime) {
          print("选择月份 $dateTime");
        },
        // 日期是否可选(返回 false 表示不可选)
        selectableDayPredicate: (dayTime) {
          if (dayTime == DateTime(2021, 1, 15)) {
            return false;
          }
          return true;
        });
  }
}
