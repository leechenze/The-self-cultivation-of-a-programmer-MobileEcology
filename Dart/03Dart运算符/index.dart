void main() {
  print('===============地板符===============');
  print(7 / 4);
  print(7 ~/ 4);
  print('===============类型判断运算符===============');
  List list = [];
  print(list is List);
  print(list is! List);
  print('===============避空运算符===============');
  dynamic foo = 1;
  print(foo ?? 3);
  foo = null;
  print(foo ?? 3);
  // ??= 的应用
  if (foo == null) {
    foo = 6;
  }
  // 等同于
  foo ??= 6;
  print(foo);
  print('===============条件属性访问===============');
  var nullVal;
  print(nullVal?.length);
  var map = {'name': '李四'};
  print(map?.length);
  print('===============级联运算符===============');
  Set s = new Set();
  s.add(1);
  s.add(2);
  s.add(3);
  s.remove(2);
  print(s);
  // 用级联运算符的方式写以上代码;
  Set newS = new Set();
  newS
    ..add(1)
    ..add(2)
    ..add(3)
    ..remove(2);
  print(newS);
}
