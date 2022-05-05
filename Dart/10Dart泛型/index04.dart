class SomeBaseClass {}

class Extender extends SomeBaseClass {}

class AnotherClass {}

class Foo<T extends SomeBaseClass> {
  // toString 方法是顶层父类 Object的方法, 会自动调用;
  // 但是如果在这重写了 将会返回这里重写的;
  String toString() => "Instance of 'Foo<$T>'";
}

void main(List<String> args) {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo);
  // Context: This is the type variable whose bound isn't conformed to.
  // 传入非 SomeBaseClass 的类 型都会报错;
  // var intFoo = Foo<int>();
  // print(intFoo);
  // var anotherClassFoo = Foo<AnotherClass>();
  // print(anotherClassFoo);

  // 但是传入继承 SomeBaseClass 的子类是不会报错的;
  // 也就是说如果类型限制中 和定义的类型没有继承或其他联系关系的, 都会有Error提示;
  var extenderFoo = Foo<Extender>();
  print(extenderFoo);
  
}
