博学之, 审问之, 慎思之, 明辨之, 笃行之;
零、壹、贰、叁、肆、伍、陆、柒、捌、玖、拾;


零.概述

  语法基础, 数据类型, 运算符, 函数, 类与对象, 库与生态

  Dart 是由谷歌公司在2011年开发的类型安全的, 面向变成的计算机编程语言, 他可以被应用于Web, 服务器, 移动应用和物联网等多个领域. 号称要取代JavaScript;

  Flutter 是由谷歌公司开发的一款免费的,开源的,基于Dart语言的UI框架, 可以快速的在IOS,Android上构建高质量的原生应用, 它最大的特点就是跨平台和高性能;

  运行方式:
    原生虚拟机, (Dart代码可以运行在Windows, Mac, Linux上)
    JavaScript引擎, (Dart可以转换成JS代码, 然后运行在浏览器上);

  Dart 环境搭建
    Dart SDK:
      /Users/***/Library/Flutter/bin/cache/dart-sdk/bin/
        dart2js.bat                                           Dart代码转换Js代码
        dart2native.bat                                       Dart代码转换原生代码
        dartdoc.bat                                           生成dart相关的文档
        dartfmt.bat                                           格式化Dart代码
        pub.bat                                               Dart生态的第三方包工具
      /Users/lee/Library/Flutter/.pub-cache/bin
        Pub下载的公共模块的执行路径;
    
  资源网站:
    官网
      https://dart.dev/
      https://dart.cn/
    在线代码运行
      https://dartpad.dartlang.org/
      https://dartpad.cn/
    生态
      https://pub.dev/




壹.语法基础
  1. 注释语法与JS一致
  2. 生命函数不需要关键字(JS中必须通过 Function 来进行声明)
  3. 函数和参数前面都有类型声明
  4. 打印为 print() (JS中是 console.log)
  5. 每行代码结束时, 必须写结束符分号
  6. main是入口函数, Dart应用程序总是从 main 函数开始执行
  7. 用 var 声明的变量, 他的数据类型是动态的
  8. 字符串是引号包裹, 支持模版字符串

  基本运行
    dart hello.dart

      void main (){
        print('Hello World');
      }

  注释:
    单行注释
      // 单行注释

    多行注释
      /* 多行注释 */

    文档注释  (文档注释可以用 dartdoc 命令转成文档, 文档注释支持MarkDown语法);
      /// 文档注释

  变量:
    变量是一个引用, Dart万物皆对象, 变量存储的是对象的引用;
    声明变量:
      明确制定类型:
        int age = 18;
      不明确类型:
        dynamic age = 18;
    变量名大小写敏感:
      age 与 Age 是两个不同的变量;
    变量的默认值是 null; (JS中变量默认值是undefined);
    Dart的变量值不会进行隐式转换的 (null不会转换为false);
  
  常量:
    常量就是值不可改变的变量;
    声明常量:
      const age = 18;
      final age = 18;
    const 和 final的区别:
      const time = DataTime.now();
      报错 - 无法将运行时的值分配给const常量
      final time = DataTime.now();
      成功 - 
      const: 用来声明编译时可以取到的值;
      final: 用来声明运行时可以取到的值;





贰.数据类型
  Number, String, Boolean, List, Set, Map, 其他
  
  Number 
    Dart 中的数字由三个关键字描述:
      num 表示既可以是整数, 也可以是小数;
      int 表示整数
      double 表示既可以是整数, 也可以是小数(浮点数的表示方式, 表示为 2.0, 3.0)
      常用API:
        https://api.dart.cn/stable/2.16.2/dart-core/num-class.html
        https://api.dart.cn/stable/2.16.2/dart-core/int-class.html
        https://api.dart.cn/stable/2.16.2/dart-core/double-class.html

  String
    声明字符串
      单引号, 双引号都可以
      三个引号可以声明包含换行符的字符串
    常用API:
    https://api.dart.cn/stable/2.16.2/dart-core/String-class.html
    正则表达式:
      RegExp(r'正则表达式') 注意前面有个r
    
  Boolean
    Dart 通过 bool 关键字来表示布尔类型;
    对布尔进行判断时, 要显式的检查布尔值;
      JS中 因为隐式类型转换的特性, 是允许这种写法的
        if(varname){};
      Dart 要显式的检查布尔值, 必须把判断符 == 加上;
        if(varname == null) {};
    常用API:
      https://api.dart.cn/stable/2.16.2/dart-core/bool-class.html
      
  List
    Dart中的数组, 由List对象表示.
    声明方式:
      字面量方式: 不限定元素的数据类型;
        不限定元素的数据类型;
          List list = [];
        限定元素的数据类型
          List list = <list>[];
      构造函数方式
        不限制长度的空列表 (growable 属性代表可以对列表进行增删改查);
          List list = new List.empty(growable: true);
        声明制定长度的填充列表
          List list = new List.filled(3, 0);
      扩展操作符
        dynamic list = [1,2,3];
        dynamic list1 = [0, ...list];
        ? 是对 list 的容错判断, 因为 list 为 null 时会报错;
        dynamic list1 = [0, ...?list];
    常用API:
      https://api.dart.cn/stable/2.16.2/dart-core/List-class.html

    遍历:
      for(var i = 0; i < xxx.length; i++){}
      for(var item in xxx){}
      forEach()
        遍历列表
      map()
        遍历并处理元素, 返回新的列表;
      where()
        返回满足条件的数据;
      any()
        只要有一项满足条件, 即返回true;
      every()
        列表中每一项都满足条件, 返回true;

  Set
    Set是一个无序的, 元素唯一的集合;
    Set有字面量和构造函数两种声明方式;
      字面量方式
        var setNums = <int>{1, 2, 3};
      构造函数方式
        var setNums = new Set();
    Set无法通过下标取值
    具有集合特有的操作
      例如: 求交集, 并集, 差集等等;
    常用API
      https://api.dart.cn/stable/2.16.2/dart-core/Set-class.html

  Map
    Map是一个无序的键值对银色. 通常被称作哈希或字典;
    声明方式
      var map = {key1: value1, key2: value2};
      var map = new Map();
      map['key'] = value
    常用API
      https://api.dart.cn/stable/2.16.2/dart-core/Map-class.html

  其他
    Runes(符文)
      Runes 对象是一个32位字符对象. 他可以把文字转换成符号表情或者特定的文字;
      print('\u{1f44d}');
      UTF字符集资源推荐;
        https://copychar.cc/
    Symbol
      在Dart中符号用#开头来表示的标识符;
    
    dynamic
      不属于一个基本的数据类型; dynamic表示数据类型是可变的, 动态数据类型;
        可以赋值后再次赋其他类型的值
        dynamic dynamicA = '1';
        dynamicA = 2;
        报错 不可以赋值后再次赋其他类型的值;
        var varA = '1';
        varA = 2;







叁.运算符

  地板除(~/)
    对于除法运算的结果做一个像下取整的操作;
  类型判断运算符(is | is!) 
    判断某个变量是否是属于某个类型, 与JS中的 instanceof 关键字逻辑有些类似, is!是取非值(判断某个变量是否不属于某个类型);
  避空运算符(?? | ??=)
    如果变量为空才会对变量进行复制, 反之, 则不会给变量进行赋值; 类似于 JS中的 &&;
  条件属性访问(?.)
    判断对象是否存在, 当对象存在时才会访问; Dart 中准对 null类型的一个运算符;
  级联运算符(..)
    返回对象的引用, 这将意味着使用级联运算符可以对对象方法进行链式调用;
      myObject.myMethod()       返回myMethod的返回值;
      myObject..myMethod()      返回myObject对象的引用;












肆.函数
  1.声明函数
    直接声明
      Dart 中的函数声明没有任何的关键字, 不需要function进行声明;
    箭头函数
      Dart 中的箭头函数中, 函数体只能写一行,且函数体内不能带有结束的分号;
      Dart 中的箭头函数, 只是函数的一种简写形式, 没有任何特殊的意义; 不同于JS中的箭头函数中有this指向的副作用;
    匿名函数
    立执行函数
      Dart 中立执行函数和JS中的立执行函数写法类似, 只是其中一种形式;
      
  2.函数参数
    必填参数
      参数类型 参数名称
    可选参数
      放在必选参数后面
      通过中括号包裹
      带默认值的可选参数
    命名参数
      用大括号包裹
      调用函数时, 形参和实参名称保持一致;
    函数参数
      将一个函数的实例作为参数, 传递给另一个函数;

  3.作用域与闭包
    作用域:
      Dart作用域和JS中一样, 内层作用域可以访问外层或全局的, 反之则不行;
    闭包:
      Dart中的闭包实现方式和 Js 中也是完全一致;
      使用时机:
        即能重用变量, 有保护变量不受到污染;
      实现原理:
        外层函数被调用后, 外层函数的作用域对象(AO)被内层函数引用着, 
        导致外层函数的作用域对象无法释放, 从而形成闭包;

  4.异步函数
    JavaScript 中, 异步调用通过Permise来实现
      async函数返回一个 Promise, await用于等待 Promise;
    Dart 中, 异步调用通过Future来实现;
      async函数返回一个 Future, await用于等待 Future;
    Future详情
      https://api.dart.cn/stable/2.16.2/dart-async/Future-class.html
    














伍.类

  类, 继承, 抽象类, 接口, 混入, 泛型, 枚举;


  类:
    简介: (05Dart类/index01.dart)
      类是class 关键字声明的代码段; 包含属性和方法; 类的构造函数可以忽略 new 关键字进行构造;
        属性: 用来描述类的变量;
        方法: 类中定义的函数;
      对象是类的实例化结果;
      类是对象的抽象:
        类好比一个户型图纸, 对象呢, 就是将图纸变现, 构造一个这种户型的房屋;
        所以类是对象的抽象, 对象是类的具体实现;
      编程方式:
        面向对象编程(OOP): Dart
        面向过程编程(POP): JavaScript
        
    构造器(构造函数): (05Dart类/index02.dart)
      默认构造函数:
        Point();
        与类名同名的函数, 在实例化时, 自动被调用;
      命名构造函数: (05Dart类/index03.dart)
        Point.origin();
        在类中使用命名构造函数实现多个构造器, 可以提供额外的清晰度;
      常量构造函数: (05Dart类/index04.dart)
        如果类生成的对象不会改变, 即可通过常量构造函数使实例对象称为编译时常量;
        声明常量构造函数的话, 类中的所有属性必须由 final 进行声明;
        常量构造函数不能有函数体, 且必须由 const 声明;
        常量构造函数的类实例化时不能用 new Person(),
        而是应该使用 const Person() 来进行实例操作, 且 const 关键字不可以忽略;
        如果new了以后常量构造函数就失去原本的功能了, 就变成了一个普通的构造函数;
      工厂构造函数: (05Dart类/index05.dart)
        通过 factory 声明, 工厂函数不会自动的生成实例; 而是通过代码的判断决定返回的实例;
        工厂构造函数中不能使用 this 关键字;
        this是实例的指代关键字, 能够拿到实例对象的话就能够使用this, 不能够拿到实例对象则不可以使用this;
      
      
    访问修饰: (05Dart类/index06.dart)
      Dart 与 TypeScript 不同, Dart 没有访问修饰符
        TypeScript:
          public:公共访问
          protected: 当前类和子类当中访问;
          private: 私有访问, 只能在当前类的内部访问;
        Dart:
          默认的访问修饰符是公开的, 即Public;
          如果属性或方法以 _ 开头, 则表示私有(private);
          只有把类单独的抽离出去, 私有的属性或方法才起作用;
            
            创建目录 lib/Person.dart
            
            引入 import 'lib/Person.dart'

    Getter和Setter: (05Dart类/index07.dart)
      Getter(获取器):
        获取器是通过 get 关键字修饰的方法;
        函数没有小括号, 访问时也没有小括号 (像访问属性一样访问方法);
      Setter(修改器):
        修改器是通过 set 关键字修饰的方法;
        访问时, 像设置属性一样给函数传参;

    初始化列表: (05Dart类/index08.dart)
      作用: 在构造函数中设置属性的默认值;
      时机: 在构造函数体执行之前执行;
      语法: 使用逗号分隔初始化表达式
        构造函数后面写个冒号,冒号后面设置初始化参数的默认值;
        多个参数之间使用逗号分隔;
      场景: 常用于设置final常量的值;
      
    静态(static): (05Dart类/index09.dart)
      static关键字用来指定静态成员
        通过static修饰的属性称静态属性;
        通过static修饰的方法称静态方法;
      静态成员可以通过类名称直接访问, 不需要实例化;
        实例化是比较消耗资源的, 声明静态成员, 可以提高程序性能;
      静态方法不能访问非静态的成员, 非静态方法可以访问静态成员;
        静态方法中不能使用this 关键字, this 关键字是实例化对象的指代关键字;
        所以在静态方法中当然没有this的关键字;
        非静态方法中也不能使用this 访问到 静态属性;

    元数据: (05Dart类/index10.dart)
      元数据是以 @ 开头, 可以给代码标记一些额外的信息;
        元数据可以用来库, 类, 构造器, 函数, 字段, 参数或变量声明的前面;
      @override (重写);
        某方法添加该注解(注释)以后, 表示重写了父类中的同名方法;
      @required (必填)
        可以通过 required 来进行注解 Dart中的命名参数, 用来指示它是必填参数;
      @deprecated (弃用);
        在某个类或某个方法前加上该注解之后, 表示此方法或类, 不再建议使用;


  继承:
    根据类的先后顺序, 可以将类分为父类和子类;
    子类通过 extends 关键字继承父类;
      继承后, 子类可以使用父类的属性和方法;
    子类中, 可以通过 @override 元数据来标记 “覆写”方法
      覆写方法就是子类中和父类同名的方法;
    子类中, 可以通过 super 关键字来引用父类中, 可见的内容(属性或方法); super指代的是父类本体;
      属性:
      方法: (普通构造函数, 命名构造函数);
  
  
  抽象类:
    抽象类是用 abstract 关键字修饰的类;
      可以理解为 抽象类就是接口的另一种实现方式; 是对继承类的一种特殊约定;
    抽象类的作用是充当普通类的模版, 约定一些必要的属性和方法;
    抽象方法是指 没有方法体的方法
      抽象类中一般都有抽象方法; 也可以没有抽象方法;
      普通类中不能有抽象方法;
    抽象类不能被实例化;
    抽象类可以被普通类继承;
      如果普通了继承抽象类, 就必须实现抽象类中所有的抽象方法;
    抽象类可以充当接口被实现;
      如果把抽象类当做接口实现的话, 普通类必须得实现抽象类里面定义的所有属性和方法, 就不只是抽象方法了;
      
    
  接口:
    
    