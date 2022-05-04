class Person {
  static String name = '张三';
  int age = 18;
  static printInfo() {
    print(name);
    // 静态方法中不能访问非静态属性;
    // print(age);
    // 静态方法不能访问非静态方法;
    // printUserInfo();
  }

  printUserInfo() {
    print(name);
    print(age);
    // 非静态方法可以访问静态方法;
    print('============');
    printInfo();
  }
}

void main() {
  Person p = new Person();
  print(Person.name);
  print(Person.printInfo());
  print(p.printUserInfo());
}
