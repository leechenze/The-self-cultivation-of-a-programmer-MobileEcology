void main() {
  /* 数字类型 */
  num numCount = 3;
  int intCount = 3;
  double doubleCount = 3;
  dynamic nan = 0 / 0;
  dynamic negative = -1;
  print(numCount);
  print(intCount);
  print(doubleCount);
  /* 数字类型 - 常用API */
  // 类型转换
  print(numCount.toString());
  // 像下取整
  print(numCount.toInt());
  print(numCount.toDouble());
  // 保留小数
  print(3.1415926.toStringAsFixed(4));
  // 返回余数
  print(10.remainder(4));
  // 数字对比 返回值(相等为0, 大于为1, 小于为-1)
  print(10.compareTo(12));
  // 最大公约数 (2*6, 3*6)结果为6
  print(12.gcd(18));
  // 科学计数法
  print(1000.toStringAsExponential(3));
  // 是否是非数
  print(nan);
  // 但是 Dart 中没有 NaN 这个关键字, 用isNaN判断是否是非数;
  // print(nan == NaN);
  print(nan.isNaN);
  // 判断是否是负数
  print(negative.isNegative);

  /* 字符串类型 */
  String str1 = 'Hello World';
  String str2 = "你好 世界";
  String str3 = '''
    Hello
    World
  ''';
  String str4 = """
    Hello
    World
  """;
  print(str1);
  print(str2);
  print(str3);
  print(str4);
  /* 字符串类型 - 常用API */
  // 字符串拼接
  print(str1 + str2);
  // 模版字符串
  print('$str1$str2');
  // 字符串分割
  print(str1.split(''));
  // 字符串裁切
  print('  space '.trim());
  print('  space '.trimLeft());
  print('  space '.trimRight());
  // 判断字符串是否为空
  print(''.isEmpty);
  print(''.isNotEmpty);
  // 字符串替换
  print(str1.replaceAll('World', 'Dart'));
  // 字符串替换(支持正则);
  print('1a2b3c4d5e6f'.replaceAll(RegExp(r'\d+'), '_'));
  // 字符串是否包含某个字符
  print(str1);
  print(str1.contains('d'));
  // 字符串是否包含某个字符
  print(str1.indexOf('d'));

  /* 正则表达式 */
  dynamic reg = RegExp(r'^1\d{10}$');
  print(reg);
  /* 正则表达式 - 常用API */
  // 是否匹配某个字符串;
  print(reg.hasMatch('11188882222'));

  /* 布尔类型 */
  bool flag1 = true;
  bool flag2 = false;
  dynamic flag;
  print(flag1);
  print(flag2);
  // 报错的错误示范(Dart不会隐式转换数据类型);
  // if (flag) {
  //   print('真');
  // } else {
  //   print('假');
  // }
  // 需要显式的判断具体数据类型;
  if (flag == null) {
    print('真');
  } else {
    print('假');
  }

  /* 列表类型 */
}
