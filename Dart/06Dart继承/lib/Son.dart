import 'Father.dart';

class Son extends Father {
  String name = "刘禅禅禅禅禅";

  // 普通构造函数继承
  // 通过super 继承父类的构造函数, 如果父类有构造函数, 这里必须要继承,是不可或缺的一步;
  Son(String job) : super(job);
  // 命名构造函数继承
  Son.job(String job) : super.job(job);

  @override
  say() {
    print(super.say());
    print('我是 刘禅禅禅禅禅 我爹是${super.name}, 我的工作是${super.job}');
  }
}
