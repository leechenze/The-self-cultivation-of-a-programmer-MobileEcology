class Phone {
  @deprecated
  activate() {
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main() {
  Phone p = new Phone();
  // 当在类的方法中加入 deprecated 注解时, 实例方法访问会有一条中划线;
  p.activate();
}
