import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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

  static final Map<String, Map<String, String>> _localizedValues = {
    "en": {
      "title": "TextI18nDemo",
      "greet": "Hello World",
    },
    "zh": {
      "title": "文本国际化示例",
      "greet": "你好 世界",
    },
  };

  String t(String key) {
    // _localizedValues['zh']['title'];
    return _localizedValues[locale.languageCode]![key].toString();
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
  Future<CustomLocalizations> load(Locale locale) {
    // SynchronousFuture是同步操作的组件
    return SynchronousFuture(CustomLocalizations(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CustomLocalizations> old) {
    // 一般不需要频繁的更新, 所以直接 return false;
    return false;
  }
}
