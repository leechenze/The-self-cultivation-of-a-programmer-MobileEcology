// 处理器;
abstract class Processor {
  String cores = ''; // 内核: 2核, 4核, 8核;
  arch(String name); // 芯片制程: 4nm, 7nm;
}

// 摄像头;
abstract class Camera {
  String resolution = ''; // 分辨率: 1000万, 3000万, 一个亿;
  brand(String name); // 品牌: 三星, 莱卡, 蔡司;
}

class Phone implements Processor, Camera {
  @override
  String cores = '';

  @override
  String resolution = '';

  Phone(this.cores, this.resolution);

  @override
  arch(String name) {
    print('芯片制程: $name');
  }

  @override
  brand(String name) {
    print('相机品牌: $name');
  }
}

void main() {
  Phone phone = new Phone('4核', '1000万');
  phone.arch('4nm');
  phone.brand('三星');
}
