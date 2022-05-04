class Person {
  String name = '';

  // 声明私有属性;
  num _money = 100;

  Person(this.name);
  // 公共方法将私有属性进行返回; 使实例对象访问私有属性;
  num get_Money() {
    return this._money;
  }

  // 声明私有方法;
  void _wife() {
    print('我是 $name 的老婆');
  }
}
