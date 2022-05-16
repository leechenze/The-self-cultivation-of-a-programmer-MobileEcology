import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          // "TextI18nDemo",
          // Localizations.of(context, CustomLocalizations).t('title'),
          // 代码优化
          CustomLocalizations.of(context, 'title'),
        ),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        // Localizations.of(context, CustomLocalizations).t('greet'),
        // 代码优化
        CustomLocalizations.of(context, 'greet'),
        style: const TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}

// 声明自定义国际化类
class CustomLocalizations {
  late final Locale locale;
  CustomLocalizations(this.locale);

  late Map<String, String> _localizedValues;
  Future<bool> loadJSON() async {
    String jsonString =
        await rootBundle.loadString('I18nLang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedValues = jsonMap.map((key, val) {
      return MapEntry(key, val);
    });

    print('=================_localizedValues=================');
    print(_localizedValues);

    return true;
  }

  String t(String key) {
    // _localizedValues['title'].toString();
    return _localizedValues[key].toString();
  }

  static String of(BuildContext context, String key) {
    return Localizations.of(context, CustomLocalizations).t(key);
  }

  static CustomLocalizationsDelegate delegate = CustomLocalizationsDelegate();
}

// 声明自定义国际化类代理
class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return ["en", "zh"].contains(locale.languageCode);
  }

  @override
  Future<CustomLocalizations> load(Locale locale) async {
    // SynchronousFuture是同步操作的组件
    CustomLocalizations localizations = CustomLocalizations(locale);
    await localizations.loadJSON();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CustomLocalizations> old) {
    // 一般不需要频繁的更新, 所以直接 return false;
    return true;
  }
}
