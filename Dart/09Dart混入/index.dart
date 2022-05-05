class Father {}

// class 混入;
// class MixinA extends Father{
class MixinA {
  String name = 'minxa';

  void printA() {
    print('A');
  }

  void run() {
    print('$name is runing');
  }
}

// mixin 混入;
mixin MixinB {
  String name = 'minxb';

  void printB() {
    print('B');
  }

  void run() {
    print('$name is runing');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  MyClass mc = new MyClass();
  mc.printA();
  mc.printB();

  // 后因入的混入, 会覆盖之前混入中重复的属性和方法;
  print(mc.name);
  mc.run();
}
