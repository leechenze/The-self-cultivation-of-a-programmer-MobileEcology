abstract class Phone {
  // 声明抽象方法
  // 手机处理器
  void processor();

  // 手机摄像头
  void camera();

  void info() {
    print('抽象类中的 Info');
  }
}

class XiaoMi extends Phone {
  // 普通类继承抽象类, 就必须实现抽象类中所有的抽象方法;
  void processor() {
    print('骁龙888');
  }

  void camera() {
    print('三星摄像头');
  }
}

class HuaWei extends Phone {
  void processor() {
    print('麒麟990');
  }

  void camera() {
    print('莱卡摄像头');
  }
}

void main() {
  // 抽象类不能被实例化; 以下代码段将报错;
  // Phone phone = new Phone();
  XiaoMi mi = new XiaoMi();
  HuaWei hua = new HuaWei();
  mi.processor();
  mi.camera();
  mi.info();
}
