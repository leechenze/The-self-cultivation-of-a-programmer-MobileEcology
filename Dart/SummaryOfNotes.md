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
      
  List
    Dart中的数组, 由List对象表示.
    声明方式:
      字面量方式: 不限定元素的数据类型;
        List list = [];
      