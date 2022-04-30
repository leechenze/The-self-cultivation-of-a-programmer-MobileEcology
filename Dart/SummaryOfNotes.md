博学之, 审问之, 慎思之, 明辨之, 笃行之;
壹、贰、叁、肆、伍、陆、柒、捌、玖、拾;


壹.概述

Dart 是由谷歌公司在2011年开发的计算机编程语言, 他可以被应用于Web, 服务器, 移动应用和物联网等多个领域. 号称要取代JavaScript;

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

    
贰.环境搭建:
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
    开启 IOS 模拟器(命令行)
      open -a Simulator
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

  使用 VSCode 启动程序
    Run => Start Debugging

  IOS权限配置在(是否可以打开相机,相册等调用原生功能的权限):
    Runner => info.plist
  