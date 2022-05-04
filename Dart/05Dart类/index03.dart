class Point {
  num x = 1, y = 1;

  Point() {}

  Point.origin() {
    x = 0;
    y = 0;
  }

  // {} 在Dart中表示命名参数;
  Point.fromJson({x: 0, y: 0}) {
    this.x = x;
    this.y = y;
  }
}

void main() {
  // 默认坐标
  Point p1 = new Point.origin();
  print(p1.x);
  // 手动设置坐标
  Point p2 = new Point.fromJson(x: 6, y: 6);
  print(p2.x);
  print(p2.y);
}
