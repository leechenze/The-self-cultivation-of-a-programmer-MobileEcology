import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-Service/Service.dart';
import 'package:hello_getx/GetX-Binding/Binding/AllControllerBinding.dart';
import 'package:hello_getx/GetX-Binding/Binding/MyBinding.dart';
import 'package:hello_getx/GetX-Binding/Binding/HomeBinding.dart';

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
// import 'package:hello_getx/GetX-Service/ServiceExample.dart';
import 'package:hello_getx/GetX-Binding/HomePage.dart';
import 'package:hello_getx/GetX-Binding/MyPage.dart';

Future<void> main() async {
  // 初始化服务
  await initService();

  // 第二种
  // 初始化initialBinding
  MyBinding().dependencies();
  HomeBinding().dependencies();

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
      // 第一种
      // initialBinding: AllControllerBinding(),
      // 第二种 (绑定路由)
      // getPages: [
      //   GetPage(
      //     name: '/MyPage',
      //     page: () => MyPage(),
      //     binding: MyBinding(),
      //   )
      // ],
      // 第三种 (绑定构造器 BindingsBuilder)
      getPages: [
        GetPage(
          name: '/MyPage',
          page: () => MyPage(),
          binding: BindingsBuilder(() {
            Get.lazyPut(() => MyBinding());
          }),
        )
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      showSemanticsDebugger: false,
    );
  }
}
