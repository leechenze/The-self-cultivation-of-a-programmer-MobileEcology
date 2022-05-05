// 此处就是 Summary中说提到的, library 关键字默认是省略的, 此处写上也可以;
// library MyCustom;
// 另外建议写成连字符的形式, 虽然在Dart中没有报错, 但是在Flutter中会有报错;
library my_custom;

class MyCustom {
  String name = 'MyClass';
  static num version = 1.0;
  void info() {
    print('自定义库');
  }
}
