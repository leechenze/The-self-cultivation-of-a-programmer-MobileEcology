class Point {
  num x = 1, y = 1;

  Point(this.x, this.y);
}

class ImmutablePoint {
  final num x = 1;
  final num y = 1;
  // 常量构造函数必须通过const声明, 不能使用final;
  const ImmutablePoint(x, y);
}

void main() {
  // 默认坐标
  Point p1 = new Point(1, 2);
  Point p2 = new Point(1, 2);
  print(p1 == p2); // false;

  // 常量构造函数用new实例化时, 就会以普通构造函数进行构造;
  ImmutablePoint p3 = new ImmutablePoint(1, 2);
  ImmutablePoint p4 = new ImmutablePoint(1, 2);
  print(p3 == p4); // false;
  ImmutablePoint p5 = const ImmutablePoint(1, 2);
  ImmutablePoint p6 = const ImmutablePoint(1, 2);
  print(p5 == p6); // false;
}
