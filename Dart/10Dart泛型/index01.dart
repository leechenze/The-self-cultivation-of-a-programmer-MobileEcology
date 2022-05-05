String getStrData(String val) {
  return val;
}

int getIntData(int val) {
  return val;
}

// 不指定数据类型的函数;
getData(val) {
  return val;
}

// 泛型
T getGenericsData<T>(T val) {
  return val;
}

// 泛型(只约定参数类型, 不约定函数返回值的类型)
T getGenericsData0<T>(T val) {
  return val;
}

// 泛型(只约定函数返回值的类型, 不约定参数类型)
T getGenericsData1<T>(val) {
  return val;
}

void main(List<String> args) {
  print(getStrData('Hello'));
  print(getIntData(1));
  // 无法限制函数的返回和参数类型;
  print(getData(1));
  print(getData('Hello'));
  // 此刻的应用场景需要用泛型函数来实现;
  print(getGenericsData<int>(1));
  print(getGenericsData<String>('Hello'));
}
