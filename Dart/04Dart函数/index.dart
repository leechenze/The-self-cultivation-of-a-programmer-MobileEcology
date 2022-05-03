import 'package:http/http.dart' as http;
import 'dart:convert';

/**
   * @description: 异步函数 Future (https://httpbin.org/ip)返回IP地址;
   * @param {*}
   * @return {*}
   */

Future getFutureIPAddress() {
  final url = 'https://httpbin.org/ip';
  return http.get(url).then((response) {
    String ip = jsonDecode(response.body)['origin'];
    return ip;
  });
}

/**
   * @description: 异步函数 async/await
   * @param {*}
   * @return {*}
   */
Future getAsyncIPAddress() async {
  final url = 'https://httpbin.org/ip';
  final response = await http.get(url);
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

/**
 * @description: Dart中声明函数不需要关键字;
 * @param {*}
 * @return {*}
 */
void printInfo() {
  print('Hello, World');
}

/**
 * @description: 返回值要与函数声明的类型要一致;
 * @param {*}
 * @return {*}
 */
int getNum() {
  return 1;
}

/**
 * @description: 匿名函数;
 * @param {*}
 * @return {*}
 */
var anonymousFn = (value) {
  print(value);
};
/**
 * @description: 箭头函数;
 * @param {*}
 * @return {*}
 */
arrowFn(value) => {print(value)};

void main() async {
  printInfo();
  print(getNum());

  List fruits = ['苹果', '橘子', '香蕉'];
  print('===========匿名函数============');
  fruits.forEach(anonymousFn);
  print('===========箭头函数============');
  fruits.forEach(arrowFn);
  /**
   * @description: 立执行函数;
   * @param {*}
   * @return {*}
   */
  print('===========箭头函数============');
  ((n) {
    print(n);
  })(17);

  /**
   * @description: 必填参数;
   * @param {*}
   * @return {*}
   */
  String userInfo(String name) {
    return '你好 $name';
  }

  /**
   * @description: 可选参数;
   * @param {*}
   * @return {*}
   */
  String userInfo1(String name, [int age = 0]) {
    return '你好 $name, 年龄 $age';
  }

  /**
   * @description: 命名参数;
   * @param {*}
   * @return {*}
   */
  String userInfo2(String name, {int age = 0}) {
    return '你好 $name, 年龄 $age';
  }

  print(userInfo('lee'));
  print(userInfo1('lee', 20));
  // 命名参数的调用,
  print(userInfo2('lee', age: 10));

  /**
   * @description: 异步函数 Future
   * @param {*}
   * @return {*}
   */
  getFutureIPAddress().then((ip) {
    print(ip);
  }).catchError((error) => print(error));
  /**
   * @description: 异步函数 async/await
   * @param {*}
   * @return {*}
   */
  try {
    String ip = await getAsyncIPAddress();
    print(ip);
  } catch (err) {
    print(err);
  }
}
