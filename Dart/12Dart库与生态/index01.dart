import 'lib/custom01.dart';
// 给库添加前缀解决命名冲突的问题;
import 'lib/custom02.dart' as custom02;
import 'lib/custom03.dart' as custom03;

void main(List<String> args) {
  MyCustom mc = new MyCustom();
  mc.info();
  print(MyCustom.version);
  print(custom02.hello());
  print(custom03.hello());
}
