class Circle {
  final double PI = 3.1415926;
  num r = 0;

  Circle(this.r);
  // Getter: 使用 get 声明的方法, 不能有小括号;
  num get area {
    return this.PI * this.r * this.r;
  }

  // Setter
  set setR(val) {
    this.r = val;
  }
}

void main() {
  var c = new Circle(10);
  // 通过Setter 修改属性;
  c.setR = 20;

  // 访问 Getter 的方法;
  print(c.area);
}
