class Point {
  // num x = 1;
  // num u = 1;
  num x = 1, y = 1;

  // 声明普通构造函数;
  // Point(num x, num y) {
  //   print('默认构造函数, 实例化时自动被调用');
  //   this.x = x;
  //   this.y = y;
  // }
  // 声明普通构造函数的简写方式 (以上代码的简写);
  Point(this.x, this.y);
}

void main() {
  Point p = new Point(3, 4);
  print(p.x);
}
