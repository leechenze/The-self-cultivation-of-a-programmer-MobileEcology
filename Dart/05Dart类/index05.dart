class Person {
  String name = '';
  static dynamic instance;
  // 工厂构造函数
  factory Person([String name = '刘备']) {
    // 工厂构造函数中不能使用this关键字;
    if (Person.instance == null) {
      // 第一次实例化
      Person.instance = new Person.newSelf(name);
    }
    // 非第一次实例化
    return Person.instance;
  }

  Person.newSelf(this.name);
}

void main() {
  // Person p0 = new Person();
  // print(p0.name);
  Person p1 = new Person('关羽');
  print(p1.name);
  Person p2 = new Person('张飞');
  print(p2.name);
  print(p1 == p2);
}
