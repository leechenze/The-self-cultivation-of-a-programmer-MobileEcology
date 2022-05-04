class Father {
  String name = '刘备备备备备';
  num money = 10000;
  num _money = 5000;

  String job = '皇帝';
  // 普通构造函数继承;
  Father(this.job);
  // 命名构造函数继承;
  Father.job(this.job);
  
  say() {
    return ('我是 ${this.name}');
  }

  get getMoney {
    return this._money;
  }
}