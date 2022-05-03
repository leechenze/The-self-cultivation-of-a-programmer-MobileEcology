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
  //   Print('假');
  // }
  // 需要显式的判断具体数据类型;
  if (flag == null) {
    print('真');
  } else {
    print('假');
  }

  /* 列表类型 */
  // 字面量方式
  List l1 = ['a', 'b', 'c'];
  List l2 = <double>[1, 2, 3];
  print(l1);
  print(l2);
  // 构造函数声明
  dynamic l3 = new List.empty(growable: true);
  dynamic l4 = new List.filled(3, 6);
  l3.add(1);
  print(l3);
  print(l4);
  // 扩展运算符  ?符 避免 l4 为null时的报错;
  dynamic l5 = [0, ...?l4];
  print(l5);
  /* 正则表达式 - 常用API */
  // 返回列表的长度
  print(l1.length);
  // 列表反转 (iterable)
  print(l1.reversed);
  print(l1.reversed.toList());
  // 添加元素
  l1.addAll(['d', 'e', 'f']);
  print(l1);
  // 在指定位置添加元素
  l1.insert(1, 'A');
  print(l1);
  // 删除元素
  l1.remove('f');
  print(l1);
  // 根据下标删除元素
  l1.removeAt(0);
  print(l1);
  // 清空
  l1.clear();
  print(l1);
  // 判断是否为空
  print(l1.isEmpty);
  // 合并元素
  List listWords = ['Hello', 'World'];
  print(listWords.join('-'));
  String strWords = listWords.join('-');
  print(strWords.split('-'));
  // 遍历列表
  List nums = [1, 2, 3];
  print('===========For===========');
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }
  print('===========ForIn===========');
  for (var item in nums) {
    print(item);
  }
  print('===========forEach===========');
  nums.forEach((ele) {
    print(ele);
  });
  print('===========forEach===========');
  nums.forEach((ele) {
    print(ele);
  });
  print('===========Map===========');
  Iterable newMap = nums.map((ele) => ele * ele);
  print(newMap);
  print(newMap.toList());
  print('===========Where===========');
  // 使用 Where 判断数字是否是奇数;
  bool isOdd(n) => n % 2 == 1;
  dynamic oddNum = nums.where((ele) => isOdd(ele));
  print(oddNum);
  print('===========Any===========');
  // 使用 Any 判断数字是否有奇数;
  print(nums.any(isOdd));
  // 等同于
  print(nums.any((n) => n % 2 == 1));
  print('===========Every===========');
  // 使用 Every 判断数字是否都是奇数;
  print(nums.every((n) => n % 2 == 1));
  // 扩展
  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((ele) => ele).toList();
  print(flattened);
  // 折叠 初始值为2, 运算逻辑为 2 * 1 * 2 * 3
  int result = nums.fold<dynamic>(2, (p, element) => p * element);
  print(result);

  /* Set类型 */
  Set setNum = <int>{1, 2, 3};
  Set fruits = new Set();
  fruits.add('苹果');
  fruits.add('橘子');
  fruits.add('香蕉');
  print(setNum);
  print(fruits);
  /* Set类型 - 常用API */
  List myList = [1, 2, 2, 3];
  print(myList.toSet());
  print(myList.toSet().toList());
  var caocao = new Set<String>();
  caocao.addAll({'张辽', '关羽', '司马懿'});
  var liubei = new Set<String>();
  liubei.addAll({'张飞', '关羽', '诸葛亮'});
  // 求交集
  print(caocao.intersection(liubei));
  // 求并集
  // caocao.addAll(liubei);
  // print(caocao);
  print(caocao.union(liubei));
  // 求差集
  print(caocao.difference(liubei));
  // 获取第一个值;
  print(caocao.first);
  // 获取最后一个值;
  print(caocao.last);

  /* Map类型 */
  Map literallPerson = {'name': '张三', 'age': 20};
  print(literallPerson);
  Map structurePerson = new Map();
  structurePerson['name'] = '李四';
  structurePerson['age'] = 20;
  print(structurePerson);
  /* Map类型 - 常用API */
  // 访问属性
  print(structurePerson['name']);
  // 判断 key 是否存在
  print(structurePerson.containsKey('name'));
  // 判断 value 是否存在
  print(structurePerson.containsValue('李四'));
  // 判断如果 key 不存在, 才会赋值;
  structurePerson.putIfAbsent('gender', () => '男');
  print(structurePerson);
  // 如果存在, 则不再赋值;
  structurePerson.putIfAbsent('gender', () => '女');
  print(structurePerson);
  // 获取 Map 中所有的key
  print(literallPerson.keys);
  // 获取 Map 中所有的value
  print(literallPerson.values);
  // 删除元素
  literallPerson.remove('name');
  print(literallPerson);
  // 根据条件进行删除
  structurePerson.removeWhere((key, value) => key == 'gender');
  print(structurePerson);

  /* 其他类型 */
  /* Runes */
  var str = '👍';
  print(str.length); // URT-16
  print(str.runes.length); // URT-32
  // Runes 可以将UTF-32 字符集表示的内容转换成符号;
  // URF规范 如果长度超过四位需要加个{}; 如果没有超过则不需要;
  Runes input = new Runes('\u{1f680}');
  Runes newStr = new Runes(str);
  print('\u{1f680}');
  print(input);
  print(String.fromCharCodes(input));
  print(String.fromCharCodes(newStr));

  /* Symbol */
  var literalA = #abc;
  var structureA = new Symbol('abc');
  print(literalA);
  print(structureA);

  /* dynamic */
  dynamic dynamicA = '1';
  dynamicA = 2;
  print(dynamicA);
  var varA = '1';
  varA = '2';
  print(varA);
}
