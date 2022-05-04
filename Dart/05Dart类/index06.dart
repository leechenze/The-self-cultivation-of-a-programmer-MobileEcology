// 引入抽离的Person类;
import 'lib/Person.dart';

void main() {
  Person p = new Person('张三');
  print(p.name);
  // 当把Person 类抽离出去后, 就无法再访问静态属性了;
  // print(p._money);
  // 那么想要访问静态属性, 只能通过类中的公共方法将静态属性返回;
  print(p.get_Money());
}
