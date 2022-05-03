// 全局变量
var globalNum = 100;

void main() {
  printInfo() {
    var localNum = 10;
    localNum--;
    print(globalNum);
    print(localNum);
  }

  printInfo();
  // 局部变量无法访问;
  // print(localNum);

  /**
   * @description: 闭包: 1.重复使用内部作用域变量;
   * @param {*}
   * @return {*}
   */
  parent() {
    var money = 1000;
    return () {
      money -= 100;
      return money;
    };
  }

  var p = parent();
  print(p());
  print(p());
  print(p());
  /**
   * @description: 闭包: 2.避免变量污染, 因为外部无法访问到money 变量, 所以不会收到污染;
   * @param {*}
   * @return {*}
   */
}
