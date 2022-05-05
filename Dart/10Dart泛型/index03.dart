// 定一个对象缓存的类;
abstract class ObjectCache {
  getByKey(String key) {}
  void setByKey(String key, String val);
}

// 定一个字符串缓存的类;
abstract class StringCache {
  getByKey(String key) {}
  void setByKey(String key, String val);
}
// 定一个Map缓存的类;
// 定一个List缓存的类;

// 定一个公共缓存的泛型类 (泛型接口);
abstract class Cache<T> {
  getByKey(String key) {}
  void setByKey(String key, T val);
}

// 文件缓存 类实现;
// 实现类的固定写法, 相当于先把T传给FileCache, 实现Cache时候再把T传给Cache这个接口;
class FileCache<T> implements Cache<T> {
  @override
  String getByKey(String key) {
    return key;
  }

  @override
  void setByKey(String key, T val) {
    print('文件缓存: key=$key, val=$val');
  }
}

// 内存缓存 类实现;
class MemoryCache<T> implements Cache<T> {
  @override
  String getByKey(String key) {
    return key;
  }

  @override
  void setByKey(String key, T val) {
    print('内存缓存: key=$key, val=$val');
  }
}

void main(List<String> args) {
  FileCache fcStr = new FileCache<String>();
  fcStr.setByKey('foo', 'bar');
  FileCache fcMap = new FileCache<Map>();
  fcMap.setByKey('foo', {"name": "张三丰", "age": 20});

  MemoryCache mcSet = new MemoryCache<Set>();
  mcSet.setByKey('foo', {1, 2, 3});
}
