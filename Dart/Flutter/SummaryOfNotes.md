博学之, 审问之, 慎思之, 明辨之, 笃行之;
壹.  贰.  叁.  肆.  伍.  陆.  柒.  捌.  玖.  拾;


壹.概述

  Dart 是由谷歌公司在2011年开发的类型安全的, 面向变成的计算机编程语言, 他可以被应用于Web, 服务器, 移动应用和物联网等多个领域. 号称要取代JavaScript;

  Flutter 是由谷歌公司开发的一款免费的,开源的,基于Dart语言的UI框架, 可以快速的在IOS,Android上构建高质量的原生应用, 它最大的特点就是跨平台和高性能;

    高性能:
      Flutter 的性能接近于原生
      Flutter 采用GPU渲染技术
      Flutter 应用的刷新频率可以达到 120 fps(每秒120帧)
              Flutter的这个帧数完全可以胜任游戏开发 React Native只有 60 fps;
    资源网站:
      官网
        https://flutter.dev/
      GitHub
        https://github.com/flutter/flutter
      中文网
        https://flutterchina.club/
        https://flutter.cn/






















    
贰.环境搭建:  (上级目录参照 hello_flutter);

  大致目录: 内置组件,  第三方组件, 状态管理,  路由与导航, 表单,  动画

  环境搭建:
    Java JDK
    Flutter SDK
      在官网找安装包: https://flutter.cn/docs/get-started/install/macos (注意对应自己的系统, 然后添加环境变量);
      命令帮助
        flutter -h
      检测开发环境
        flutter doctor
    Android Studio
      安装 Android Studio
      安装 Android SDK
      安装 Android 模拟器
    Xcode
      安装 Xcode
      配置 Xcode Command-line tools(命令行)
        sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
        sudo xcodebuild -runFirstLaunch
      配置 IOS 环境依赖(命令行)
        brew update
        brew install --HEAD libimobiledevice
        brew install ideviceinstaller ios-depoly cocoapods
        pod setup

    以上步骤自行CSDN;
    
    创建flutter应用
      flutter create hello_flutter(appName)
    查看当前模拟器
      flutter emulators
    应用当前模拟器启动
      flutter emulators --launch <emulator id>
    开启模拟器
      open -a Simulator

    运行方式
      命令行启动项目
        flutter run
          r                       重新加载(命令行启动不能热更新);
          R                       重新启动
          p                       启动调试网格
          o                       Android & IOS 系统切换
          q                       退出模拟器

      VSCode 运行 选中(main.dart)
        Run => Start Debugging

      XCode 运行
      Runner.xcodeproj 是XCode执行目录,用Xcode选择打开即可;
        ios => Runner.xcodeproj
      .plist 是IOS权限配置文件(是否可以打开相机,相册等调用原生功能的权限):
        ios => Runner => info.plist

      Android Studio 运行 (更改一下配置项后启动);
        修改配置文件 改为国内镜像源
          android => build.gradle:
            buildscript{
              repositories {
                  // google()
                  // mavenCentral()
                  maven {url 'https://maven.aliyun.com/repository/google'}
                  maven {url 'https://maven.aliyun.com/repository/jcenter'}
                  maven {url 'https://maven.aliyun.com/repository/public'}
              }
            }
            allprojects {
                repositories {
                    // google()
                    // mavenCentral()
                    maven {url 'https://maven.aliyun.com/repository/google'}
                    maven {url 'https://maven.aliyun.com/repository/jcenter'}
                    maven {url 'https://maven.aliyun.com/repository/public'}
                }
            }
        同理,本地的环境 Flutter SDK 安装包也需做更改
          /Users/***/Library/Flutter/packages/flutter_tools/gradle/flutter.gradle
            buildscript {
                repositories {
                    // google()
                    // mavenCentral()
                    maven {url 'https://maven.aliyun.com/repository/google'}
                    maven {url 'https://maven.aliyun.com/repository/jcenter'}
                    maven {url 'https://maven.aliyun.com/repository/public'}
                }
            }


  

























叁.基础组件 (内置组件)

    常用, 布局, 按钮, 图片, 列表, 其他
    
    Flutter当中不是基于JS生态, 没有单独的CSS样式描述;
    所有的样式修饰都是通过组件的形式完成的;
  
    1.hello_flutter (lib01/main.dart)

      基础目录:
        flutter_app
          android                           安卓目录
          build                             构建目录
          ios                               IOS目录
          lib                               开发目录
            main.dart                         入口文件
          test                              测试目录
          .gitignore                        
          pubspec.lock                      项目依赖锁定信息
          pubspec.yaml                      项目依赖配置信息
      
      Material Design UI  (Google推出的前端UI解决方案);
        官网: https://www.material.io/
        中文网: https://material-io.cn/
      Flutter 中的一切内容都是组件(Widget);
        无状态组件: (StatelessWidget)
        有状态组件: (StatefulWidget)
        比如以下例子中用到的 Container, Center, Text都是组件;
      
        void main() {
          runApp(MyApp());
        }
        
        class MyApp extends StatelessWidget {
          @override
          // build 是一个Widget的实例, 是一个热更新的方法;
          Widget build(BuildContext context) {
            return new Container(
                child: new Center(
              child: new Text(
                "Hello Flutter",
                textDirection: TextDirection.ltr,
              ),
            ));
          }
        }

    
    2.App结构:  (lib02/main.dart)
      现阶段要搭建App基本骨架, 需要考虑使用两个组件:
      MaterialApp (Material Design UI提供, 包含App的基本骨架)
        title (任务管理器中的标题);    
        home  (主内容, 一般来说是包含 Scaffold的自定义组件);
        debugShowCheckedModeBanner  (是否显示左上角调试信息);
        
      Scaffold  (脚手架)
        appBar  (应用头部)
        body  (应用主体)
        floatingActionButton  (浮动按钮)
        drawer  (左侧抽屉菜单)
        endDrawer (右侧抽屉菜单)

      具体App结构请看图
      ```html
        <img src="/Images/course/WechatIMG96.png">
      ```
      
      
      
    3.文本组件  (lib03/main.dart)
      RichText 和 TextSpan  (这两个组件一般组合使用, 作用于给一段文本声明不同的多个样式)
      Text
        TextDirection                       (文本方向)
        TextStyle                           (文本样式)
          Colors                              (文本颜色)
          FontWeight                          (字体粗细)
          FontStyle                           (字体样式)
        TextAlign                           (文本对齐)
        TextOverflow                        (文本溢出)
        maxLines                            (指定显示的行数)
      
        
    4.自定义字体  (lib04/main.dart) (pubspec.yaml) (fonts/*.ttf)
      下载并导入字体库
        https://fonts.google.com
        解压压缩包, 将字体文件复制到项目中
      在 pubspec.yaml中声明字体
        <img src="/Images/course/WechatIMG97.png">
      使用
        为整个应用设置默认自定义字体  (全局应用)
          MaterialApp(
            theme: ThemeData(
              fontFamily: 'OleoScript',
            ),
          );
        为某个组件设置自定义字体  (局部应用)
          Text(
            text: 'Hello Xi`an',
            style: TextStyle(
              fontFamily: 'OleoScript',
            ),
          ),
        
        
    5.Icon
      Icon是flutter当中的图标库, 实质上是由 Material Design提供的
        Icon(
          Icons.具体名称,
        )
        icon不需要额外配置,因为它是基于 Material 的, 集成在项目中的一个不可少的库
      图标在线预览:
        https://material.io/resources/icons
      

      
    6.Color (lib06/main.dart)
      自定义颜色
        Flutter中通过 ARGB 声明颜色
        const Color(0xFF42A5F5)
          (0x)          声明: 标记为16进制
          (FF)          声明: 透明度
          (42A5F5)      声明: 十六进制色码
        const Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)  构造函数声明: 十六进制语法
        const Color.fromARGB(255, 66, 165, 245)       构造函数声明: 十进制语法
        const Color.fromRGBO(66, 165, 245, 1.0)       构造函数声明: 最后一位表示透明度
      Colors
        const Colors.red      注意是Colors复数形式
        
      
    7.Container (lib07/main.dart)
      布局相当于Html中的 Div
        child                             声明子组件
        width                             设宽
        height                            设高
          double.infinity                   无限宽高, 表示自适应父元素宽度
        margin                            外边距
        padding                           内边距
          EdgeInsets                        边缘填充
            .all()                            设置四个方向的 padding 或 margin
            .fromLTRB()                       分别对四个方向的 内外边距设值
            .only()                           设置某一个方向的值
        decration                         修饰盒模型
          BoxDecration                      边框, 圆角, 渐变, 阴影, 背景色, 背景图
        alignment                         对盒子 (Container) 中的内容进行对齐
          Alignment                         内容对齐
        transform                         变形
          Matrix4                         平移(translate), 旋转(rotate), 缩放(scale), 斜切(skew)
        
    
    8.Column线性布局  (lib08/main.dart)
      Column
        Column的主轴方向是垂直方向;
        mainAxisAlignment:  MainAxisAlignment   主轴对齐方式
        crossAxisAlignment: CrossAxisAlignment  交叉轴对齐方式
        children:                               内容
      Row
        Row的主轴方向是水平方向;
        其他属性和Column一致;

    9.Flex布局  (lib09/main.dart)
      Flex
        children                                  声明子组件
        direction                                 声明主轴方向
        mainAxisAlignment                         声明主轴对齐方式
        textDirection                             声明水平方向排列顺序
        crossAxisAlignment                        声明交叉轴对齐方式
        verticalDirection                         声明垂直方向的排列顺序
      Expanded  (可伸缩组件)                      默认获取父元素的宽度,无需设置 width: doubule.infinity
        flex                                      声明弹性布局占比
        child                                     声明子组件

    10.流式布局 (lib10/main.dart)
      Flex中的流式布局不是默认场景, 比如在Column或Row中声明的内容溢出了, 就会报错;
      像Web开发的 html 如果溢出会按着流式顺序往下排列, 但是Flutter 则不行;
      Flutter 提供了一个内容溢出报错的组件 Wrap
      
      Wrap  (解决内容溢出的问题)
        spacing                               主轴方向子组件之间间距        alignment                             主轴方向对齐方式
        runSpacing                            纵轴方向只组件之间间距
        runAlignment                          纵轴方向对齐方式
      
      Chip (标签, 扁平化按钮)
        CircleAvatar  (圆形头像)
    
    
    11.层叠布局 (lib11/main.dart)
      Stack (层叠组件)  类似于css中的 z-index
        alignment                           声明未定义子组件的对齐方式
        textDirection                       声明未定义子组件的排列顺序

        Positioned  (定位组件);
          child                               声明子组件
          left                                类同 Css
          top                                 类同 Css
          right                               类同 Css  
          bottom                              类同 Css
          width
          height
    
      NetWorkImage  (网络图片组件);
        NetWorkImage('图片地址')              

        安卓网络权限配置: 在开发的 Flutter 当中, 一定要有访问网络的权限, 才能加载网络图片
          配置文件路径: (hello_flutter/android/app/src/main/AndroidManifest.xml)
            <uses-permission android:name="android.permission.INTERNET"/>
            <application
              android:usesCleartextTraffic="true" >

    12.卡片&列表瓦片 (lib12/main.dart)
      Card
        child                       子组件
        shadowColor                 阴影色
        elevation                   阴影高度
        shape                       边框样式
        margin                      外边距

      ListTile
        leading                     头部组件
        title                       标题
        subtitle                    子标题
      
    
    13.按钮 (lib13/main.dart)
      常用按钮:
        Flutter 1.22版本之前          未来版本将弃用
          FlatButton                  扁平按钮
          RaisedButton                凸起按钮
          OutlineButton               轮廓按钮
        Flutter 1.22版本之后
          TextButton                  扁平按钮
          ElevatedButton              凸起按钮
          OutlinedButton              轮廓按钮
        
        Flutter 为什么要重写按钮?
          以前的按钮统一外观比较麻烦, 经常自定义大量的按钮样式
          新按钮将外观属性集合为一个ButtonStyle, 非常方便统一控制
        
      按钮主题:
        TextButton       ==>      TextButtonTheme
        ElevatedButton   ==>      ElevatedButtonTheme
        OutlinedButton   ==>      OutlinedButtonTheme
      
      其他按钮:
        图标按钮:
          IconButton
        ButtonBar:
          如果空间足够, 就按着水平方向排列, 否则将垂直排列
        FloatingActionButton:  
          浮动按钮
        BackButton:
          回退按钮
        CloseButton:
          关闭按钮
      
    
    
    
    14.图片组件 (lib14/main.dart)
      Image.asset(加载本地图片)
        Flutter 项目下, 创建图片存储目录
        在pubspec.yaml中的flutter部分添加图片配置
      Image.network(加载网络图片)
        保证网络畅通
        设置网络访问权限
          之前Card (lib12/main.dart) 组件中已经配置过, 步骤不再阐述;
        


    15.SingleChildScrollView  (lib15/main.dart)
      SingleChildScrollView (类似Android中的 ScrollView)
        child                           子组件
        padding                         内边距
        scrollDirection                 滚动方向
          Axis.horizontal                 水平滚动
          Axis.vertical                   垂直滚动
        reverse                         初始化滚动位置
          false                           头部
          true                            尾部
        physics                         设置滚动视图的物理特征
          ClampingScrollPhysics           Android 下微光效果
          BouncingScrollPhysics           IOS 下弹性效果
        


    16.ListView (lib16/main.dart)
      ListView 在开发中经常使用的组件, 功能也比较丰富
        加载列表的组件(加载所有的Widgets, 适用Widget比较少的场景);
        ListTile                      Tile而不是Title
          leading                       一般声明头部的图标或图片
          title                         标题
          subtitle                      子标题
          trailing                      声明尾部图标
          selected                      标记当前的选项是否选中
      ListView.builder
        按需加载Widget, 性能比默认构造函数高, 适用于Widget较多的场景, 开发时使用很多
        itemCount                       指定元素数量
        itemExtent                      指定元素高度
        itemBuilder                     指定元素构造函数
      ListView.separated
        比builder多了个分割器



    17.GridView (lib17/main.dart)
      GridView
        children
        scrollDirection
        gridDelegate                      网格代理 指定两种网格的显示方式
          SliverGridDelegateWithFixedCrossAxisCount   ==>   GridView.count
          SliverGridDelegateWithMaxCrossAxisExtent    ==>   GridView.extend
      GridView.count                      指定固定列数
      GridView.extend                     指定子组件宽度, 列数自适应
      GridView.builder                    用法和 GridView + ListView 类似

      图文示例:
        <img src="/Images/course/WechatIMG102.png">

      
    18.其他组件 (lib18/main.dart)
      Material  安卓风格的组件库
        之前章节都是安卓风格的组件
      Cupertino IOS风格的组件库
        import 'package:flutter/cupertino.dart';
        和material一样默认继承在了 flutter sdk中, 不需要下载
        
        资源地址
          https://docs.flutter.dev/development/ui/widgets/cupertino
      
      Platform
        import 'dart:io'
        Platform 是 IO 库中的类, 有判读系统的属性

        isIOS
        isAndroid
      
      SafeArea
        SafeArea 可以有效解决异形屏的问题 (比如刘海屏)

        图文示例:
          <img src="/Images/course/WechatIMG103.png">
        

























肆.第三方组件
  
  第三方组件不同于内置组件引入可用, 第三方使用前需要下载
  第三方组件有很多, 此处只记录三个常用的, 剩余的自行探索;
    
  dio                       功能类于  Axios
  flutter_swiper            功能类于  Swiper
  shared_preferences        功能类于  LocalStorage

  1.dio (lib19/main.dart)
    相当于 Flutter 版的Axios, 用于处理Http请求;
    https://pub.dev/packages/dio
    安装依赖:
      pub get
      flutter packages get
      参考官网配置 VS Code 中设置配置并保存后,自动下载
  
  2.flutter_swiper  (lib20/main.dart)
    Flutter中最好的轮播组件, 适配Android 和 IOS
      https://pub.dev/packages/flutter_swiper
    安装依赖: 同上
  
  3.shared_preferences  (lib21/main.dart)
    shared_preferences是一个本地数据缓存库  (类似于React Native中的 AsyncStorage)
      https://pub.dev/packages/shared_preferences
    安装依赖: 同上
      shared_preferences既可以用在状态组件中, 也可以用在无状态组件中;

    Error 更改配置:
      com.android.tools.build:gradle:4.1.0
      com.android.tools.build:gradle:3.5.1
      
    使用: SharedPreferences prefs = await SharedPreferences.getInstance();
      增
        setString(key, val)
        setBool(key, val)
        setInt(key, val)
      删
        remove(key)
        clear()
      改
        setString(key, val)
        setBool(key, val)
        setInt(key, val)
      查
        getString(key, val)
        getBool(key, val)
        getInt(key, val)

  

























  


  


  
伍.状态管理

    StatefulWidget                        状态组件
    DataTable                             拥有状态管理的表格
    InheritedWidget                       实现跨组件的状态分享功能
    生命周期
    provider

    1.StatefulWidget  (lib22/main.dart)
      Flutter中的组件划分:
        StatelessWidget                   无状态组件
        StatefulWidget                    状态组件
      状态作用域划分:
        组件内私有状态  StatefulWidget
        跨组件状态共享  InheritedWidget, Provider
        全局状态       Redux, fish-redux, Mobox...
      状态组件的组成
        StatefulWidget  组件本身不可变 - @immutable
        State           将变化的状态放到State中维护
      
    2.DataTable  (lib23/main.dart)
      DataTable其实是一个UI组件, 是Flutter中的表格
        column  声明表头列表
          DataColumn  表格单元格
        rows 声明表格数据
          DataRow  表示一行数据
            DataCell  数据单元格
            
      图文示例:
        <img src="/Images/course/WechatIMG104.png">

    3.InheritedWidget  (lib24/main.dart)
      InheritedWidget是可以实现跨组件的状态分享功能
      What: 
        提供了沿树向下, 共享数据的功能
        即子组件可以获取父组件(InheritedWidget)的数据
      Why:  
        依赖构造函数传递数据的方式不能满足真实的业务需求
        所以, 需要一个新的, 更好的跨组件数据传输方案
      How:
        BuildContext.dependOnInheritedWidgetOfExactType<MyInheritedWidget>
      
    4.生命周期  (lib25/main.dart)
      initState 组件对象插入到元素树时调用
      didChangeDependencies 当前状态对象的依赖改变时调用
      build 组件渲染时调用
      setState  组件对象的内部状态变更时调用
      didUpdateWidget 组件配置更新时调用
      deactivate  组件对象在元素树中暂时移除时调用
      dispose 组件对象在元素树中永远移除时调用

      图文示例:
        <img src="/Images/course/WechatIMG106.png">
      


    5.provider  (lib26/main.dart)
      Provider  是对于InheritedWidget的封装, 跨组件数据分享的解决方案
      Provider  是第三方库(需安装), InheritedWidget是内置的
      资源网站:
        https://pub.dev/packages/provider
      优点:
        简化资源的分配和处置
        支持数据懒加载
      Provider 实现原理?
        <img src="/Images/course/WechatIMG107.png">
      使用:
        创建数据模型  (Model层)
          T extends ChangeNotifier
        创建Provider  (ViewModel层)
          Provider()  不会被要求随着变化而变化
          ChangeNotifierProvider()  随着某些数据改变而被通知更新
        获取数据模型并更新UI  (View层)
          通过上下文  (BuildContext)
          通过静态方法  (Provider.of<T>(context));
          一旦有了数据更新, 通过 notifyListeners() 函数通知后面的子组件做更新
        
































陆.路由与导航

  1.路由简介
  2.匿名路由
  3.命名路由
  4.动态路由
  5.路由传参
  6.Drawer导航  (抽屉菜单)
  7.BottomNavigationBar导航 (底部菜单)
  8.Tab导航 (选项卡)
  


  1.路由简介
    Route
      一个路由是一个屏幕或页面的抽象
    Navigator
      管理路由的组件
        Navigator可以通过路由入栈和出栈来实现页面之间跳转
      常用属性
        initialRoute  初始路由, 即默认页面
        onGenerateRoute 动态路由, 根据规则匹配动态路由
        onUnknownRoute  未知路由, 也就是404
        routes  路由集合
  
  2.匿名路由  (lib27/main.dart)
    Navigator
      push  (跳转到指定组件);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => 组件名称 () )
        );
      pop (回退);
        Navigator.pop(context);

  3.命名路由  (lib28/main.dart)
    声明路由
      initialRoute  初始路由, 即默认页面
      onUnknownRoute  未知路由, 也就是404
      routes  路由表(Map类型)
    跳转到命名路由
      Navigator.pushNamed(context, '路由名称');
    
  4.动态路由  (lib29/main.dart)
    命名路由可以看成是静态路由, 路由名称一旦声明之后就不再动了
    动态路由是指 通过 onGenerateRoute 属性指定的路由
    一旦通过 GenerateRoute 声明了动态路由之后, 之前的 routes 的路由列表就会失效;
  
  5.路由传参  (lib30/main.dart)
    匿名路由:
      路由中声明参数
      组件中接收参数
      图文示例:
        <img src="/Images/course/WechatIMG108.png">
    命名路由:
      路由中声明参数
        Navigator.pushNamed(context,routename, {arguments});
      组件中接收参数
        ModalRoute.of(context).settings.arguments
      图文示例:
        <img src="/Images/course/WechatIMG109.png">
        
  
  6.Drawer导航  (lib31/main.dart)
    Scaffold
      drawer  (左侧抽屉菜单);
      endDrawer (右侧抽屉菜单);
    UserAccountsDrawerHeader
      抽屉菜单头部组件
    AboutListTile
      关于弹窗
    

  7.BottomNavigationBar导航 (lib32/main.dart)
    itmes                   包含导航 (BottomNavigationItem) 的列表
    currentIndex            当前导航索引
    type                    声明底部导航的样式,共两种  (BottomNavigationType)
    onTap                   单击事件 (一般会更新导航索引)
  
  
  8.Tab导航 (lib33/main.dart)
    DefaultTabController    整个Tab导航的容器;
      length                  声明导航数量
      child                   指定子组件
    TabBar                  导航菜单
      tabs                    导航菜单数组
    TabBarView              导航页面
      children                多个导航页面内容
    

      
      
      
      





























柒.表单 (lib34/main.dart)
  1.Switch
  2.Checkbox
  3.Radio
  4.TextField
  5.calendar
  6.Form


  1.Switch
    value                       开关值
    onChanged                   状态变更调用方法
    activeColor                 开启时的按钮颜色
    activeTrackColor            开启时的轨道颜色
    inactiveThumbColor          关闭时的按钮颜色
    inactiveTrackColor          关闭时的轨道颜色

  2.Checkbox
    Checkbox
      value                       开关值
      onChanged                   状态变更调用方法
      activeColor                 选中时的背景颜色
      checkColor                  选中时的对勾颜色
    CheckboxListTile
      title                       标题
      subtitle                    子标题
  
  3.Radio
    Radio
      value                       开关值
      groupValue                  选择组的值
      onChanged                   状态变更调用方法
    RadioListTile
      title                       标题
      subtitle                    子标题

  4.TextField
    autofocus                     是否获取焦点
    keyboardType                  键盘类型(数字键盘 和 文本键盘)
    obscureText                   true时为密码框, false为文本框
    decoration                    样式修饰
    onChanged                     内容更改时调用
    labelText                     标题
    hintText                      提示信息 placeholder
    maxLines                      显示行数 但值大于1时,就会变成文本域
    
  5.Calendar  (更多代码片段请看: /Dart/Flutter 基础.pdf)
    CalendarDatePicker            日历选择器
      initialCanlendarMode        指定日历的展示方式
        DatePickerMode.day        
        DatePickerMode.year        
    showDatePicker                日期选择器
      initialDatePickerMode (year | day)
      initialEntryMode  (calendar | input)  手动输入日期
    showTimePicker                时间选择器

  6.Form
    使用步骤:
      创建表单form, 并以GlobalKey 作为唯一性标识
      添加带验证逻辑的 TextFormField 到 Form 中
      创建按钮以验证和提交表单
    Form                          表单容器
      key                         GlobalKey
      child                       子组件

      创建表单唯一键:final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
      验证表单:     _formKey.currentState!.validate() 
      提交表单:     _formKey.currentState!.save() 
      重置表单:     _formKey.currentState!.reset() 
      
    TextFormField                 输入框
      和TextField的区别: 必须在Form内使用 并且带有验证器
      validator                   验证器
      obscureText                 密码框
      onSaved
        作用: 设定表单字段的值
        触发时机: 在表单save()之后触发, 也就是说调用表单的save(),就会触发这里的onSave()
        
        
  
  
  
  
  
  
  
  
  
  
  
  
  
        
  
  
  
  
  
  
  
  
  
  
  
  
  
  
捌.动画
  