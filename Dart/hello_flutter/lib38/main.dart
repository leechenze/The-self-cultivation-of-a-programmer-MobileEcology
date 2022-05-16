import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'layout/WidgetI18nDemo.dart';
// import 'layout/TextI18nDemo.dart';
import 'layout/langPackageI18n.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      // 设置国际化(指定那些组件需要国际化)
      localizationsDelegates: [
        // 本地化代理(指定要代理的组件)
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // 自定义本地化代理(指定要代理的文本)
        CustomLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // 美国英语
        Locale('zh', 'CN'), // 简体中文
      ],
      // 多语言包
      localeResolutionCallback: (locale, supportedLocales) {
        print('deviceLocale: ${locale!.languageCode}');
        print('deviceLocale: ${locale.countryCode}');
        for (var i = 0; i < supportedLocales.length; i++) {
          if (supportedLocales.toList()[i].languageCode ==
                  locale.languageCode &&
              supportedLocales.toList()[i].countryCode == locale.countryCode) {
            return supportedLocales.toList()[i];
          }
        }
      },
    );
  }
}
