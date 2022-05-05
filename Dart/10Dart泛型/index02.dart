class CommonClass {
  Set s = new Set<int>();
  void setAdd(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

class GenericsClass<T> {
  Set s = new Set<T>();
  void setAdd(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main(List<String> args) {
  CommonClass commonc = new CommonClass();
  commonc.setAdd(1);
  commonc.info();
  GenericsClass genericsc = new GenericsClass<int>();
  genericsc.setAdd(1);
  genericsc.info();
  GenericsClass genericsc1 = new GenericsClass<String>();
  genericsc1.setAdd('Hello');
  genericsc1.setAdd('World');
  genericsc1.info();

  // 构造函数写法;
  Set typeTest1 = new Set<int>();
  typeTest1.add(1);
  typeTest1.add(2);
  print(typeTest1);
  // 字面量写法;
  Set typeTest2 = <String>{};
  typeTest2.add('Hello');
  typeTest2.add('China');
  print(typeTest2);
}
