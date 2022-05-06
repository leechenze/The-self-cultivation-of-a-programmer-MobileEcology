import 'lib/custom01.dart';
// 给库添加前缀解决命名冲突的问题;
import 'lib/custom02.dart' as custom02;
import 'lib/custom03.dart' as custom03;
import 'lib/custom04.dart' deferred as custom04;
import 'lib/custom05.dart';

void main(List<String> args) {
  MyCustom mc = new MyCustom();
  mc.info();
  print(MyCustom.version);

  // as
  print(custom02.hello());
  print(custom03.hello());

  // deferred as
  print('1');
  greet();
  print('2');

  // part & part of
  print(phone());
  Camera camera = new Camera();
  camera.info();
  Processor processor = new Processor();
  processor.info();
}

// deferred as
Future greet() async {
  await custom04.loadLibrary();
  custom04.hello();
}
