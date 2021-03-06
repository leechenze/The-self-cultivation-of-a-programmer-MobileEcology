import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/View/MovieListView.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/RoutesModule/AppPages.dart';
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
// import 'package:hello_getx/GetX-Binding/HomePage.dart';
// import 'package:hello_getx/GetX-Binding/MyPage.dart';
// import 'package:hello_getx/GetX-GetUtils/GetUtilsExample.dart';
// import 'package:hello_getx/GetX-GetView/GetViewExample.dart';
// import 'package:hello_getx/GetX-GetWidget/GetWidgetExample.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/GetConnetAndStateExample.dart';

Future<void> main() async {
  runApp(const MyApp());
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
      // home: Home(),
      initialRoute: AppPages.INIT,
      getPages: AppPages.routes,
      showSemanticsDebugger: false,
    );
  }
}
