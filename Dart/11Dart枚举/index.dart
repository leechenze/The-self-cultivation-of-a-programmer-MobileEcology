enum Color { red, green, blue }

void main(List<String> args) {
  // 通过index返回枚举中具体常量值索引;
  print(Color.red.index);
  // 通过values返回常量列表;
  print(Color.values);
  List<Color> colors = Color.values;
  print(colors);
  print(colors[0]);
  // 通过forEach 遍历列表内容;
  colors.forEach((element) {
    print('value: $element, index: ${element.index}');
  });
}
