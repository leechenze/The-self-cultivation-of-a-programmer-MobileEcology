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
        
        
        
        
    5.
    6.

      