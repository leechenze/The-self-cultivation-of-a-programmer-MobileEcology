class Rect {
  int height = 0;
  int width = 0;

  // 可以用可选参数实现构造函数不传参的引用场景;
  // Rect([int height = 2, int width = 10]) {
  //   this.height = height;
  //   this.width = width;
  //   // 访问对象当中的属性需要在 $ 符后加{}, 但凡用到 . 的话呢都需要用{} 包裹;
  //   print('${this.height} -- ${this.width}');
  // }

  // 初始化列表, 可以理解为构造函数的可选参数的一个简写形式;
  // 注意 初始化列表 的操作就等同于 构造函数中写入了 this.height = 4;
  // 所以无需在函数题中写 this.height 的赋值了;
  Rect()
      : height = 4,
        width = 20 {
    print('${this.height} -- ${this.width}');
  }
}

class Point {
  double x = 0, y = 0, z = 0;
  Point(this.x, this.y, this.z);

  // 重定向构造函数 (初始化列表的特殊用法) this在这里指代的是 Point 本体;
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  Rect r = new Rect();

  Point p = new Point(1, 2, 3);
  print(p.z);

  Point p1 = new Point.twoD(4, 5);
  print(p1.z);
}
