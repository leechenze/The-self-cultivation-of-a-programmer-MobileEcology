import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Service/Service.dart';

// import 'GetX-Snackbar/SnackbarExample.dart';
// import 'GetX-Dialog/DialogExample.dart';
// import 'GetX-BottomSheet/BottomSheet.dart';
// import 'GetX-Navigation/Home.dart';
// import 'GetX-ObxExample/ObxExample.dart';
// import 'GetX-Controller/ControllerExample.dart';
// import 'GetX-Controller-Watch/Controller-Watch.dart';
// import 'GetX-Controller-LifeCycle/Controller-LifeCycle.dart';
// import 'GetX-Controller-UniqueID/Controller-UniqueID.dart';
// import 'package:hello_getx/GetX-I18n/I18nExample.dart'; // 请看GetX-I18n/main.dart
import 'package:hello_getx/GetX-Service/ServiceExample.dart';

Future<void> main() async {
  // 初始化服务
  await initService();
  runApp(const MyApp());
}

Future<void> initService() async {
  print('初始化服务');
  await Get.putAsync(() async => await Service());
  print('所有服务启动');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      showSemanticsDebugger: false,
    );
  }
}
