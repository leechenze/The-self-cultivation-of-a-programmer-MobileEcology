博学之, 审问之, 慎思之, 明辨之, 笃行之;
零. 壹. 贰. 叁. 肆. 伍. 陆. 柒. 捌. 玖. 拾;





记录: adb 连接 Google Pixel emulator
  1.显示设备
    adb devices
  2.杀死 adb Server 进程
    adb kill-server
  3.连接 Google Pixel (5555是Pixel emulator 默认端口)
    adb connect 127.0.0.1:5555
  4.这条命令的意思是，Android允许我们通过ADB，把Android上的某个端口映射到电脑（adb forward），或者把电脑的某个端口映射到Android系统（adb reverse），在这里假设电脑上开启的服务，监听的端口为8081。Android手机通过USB连接电脑后，在终端直接执行adb reverse tcp:8081 tcp:8081，然后在手机中访问127.0.0.1:8081，就可以访问到电脑上启动的服务了
    adb  -s 127.0.0.1:5555 reverse tcp:8081 tcp:8081
  5.根上 -s参数 操作要制定设备的Shell
    adb -s 127.0.0.1:5555 shell