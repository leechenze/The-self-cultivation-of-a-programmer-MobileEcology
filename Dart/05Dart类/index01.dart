// 声明类
class Person {
  // 类的属性;
  String name = "张三";
  // 累的方法;
  void getInfo() {
    print('我是 $name');
  }
}

void main() {
  // 实例化类, 得到一个对象;
  Person p = new Person();
  // 访问类中的属性;
  print(p.name);
  // 访问类的方法;
  p.getInfo();
}
