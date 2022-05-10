博学之, 审问之, 慎思之, 明辨之, 笃行之;
壹、贰、叁、肆、伍、陆、柒、捌、玖、拾;


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


  























叁.HelloFlutter
  
  基础组件,  第三方组件, 状态管理,  路由与导航, 表单,  其他

  基础组件:  

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
        <img src="../Images/WechatIMG96.png">
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
        <img src="/Images/WechatIMG97.png">
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

      ListTitle
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
        


    
    
    
    
    
    16.
