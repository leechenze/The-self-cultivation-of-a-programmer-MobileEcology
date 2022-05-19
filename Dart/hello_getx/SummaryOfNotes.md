博学之, 审问之, 慎思之, 明辨之, 笃行之;
零. 壹. 贰. 叁. 肆. 伍. 陆. 柒. 捌. 玖. 拾;















零.GetX-Snackbar
  顶层组件换为 GetMaterialApp, GetMaterialApp 是对 MaterialApp 的一层封装
  如果想在应用程序中触发某些特定的事件后，需要弹出一则快捷消息，那么使用Snackbar则是最佳的选择;
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/introduction.html#snackbar%E5%B1%9E%E6%80%A7%E5%92%8C%E8%AF%B4%E6%98%8E
  

壹.GetX-Dialog
  Dialog 底层其实是对AlertDialog进行了封装， 一般用于二次确认的弹出框
  比如当点击某个按钮提交资料时,需要用户二次确认，以防止误操作
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/introduction.html#dialog%E5%B1%9E%E6%80%A7%E5%92%8C%E8%AF%B4%E6%98%8E
  
贰.GetX-BottomSheet
  BottomSheet 是底部弹出的一个组件，常用于单选、验证码二次校验弹窗等，GetX的BottomSheet底部弹出是自定义通过路由push的方法实现底部弹窗的一个效果。
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/introduction.html#bottomsheet%E5%B1%9E%E6%80%A7%E5%92%8C%E8%AF%B4%E6%98%8E
  


叁.GetX-Navigation
  使用GetX 进行路由跳转非常的简单，只需要调用Get.to()即可进行路由跳转，而系统的路由跳转需要写八行代码，
  这是不能忍受的事情，而且涉及到跳转动画设置 、动画时长定义、动画曲线 等设置那就更加的复杂，
  而GetX为我们封装了Navigation，无需context可进行跳转，并且能很方便的使用跳转动画等。
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/introduction.html#navigation%E8%B7%AF%E7%94%B1%E8%B7%B3%E8%BD%AC


肆.GetX-ObxExample
  响应式编程可能会让很多人感到陌生，因为它很复杂，但是GetX将响应式编程变得非常简单。
    你不需要创建StreamControllers.
    你不需要为每个变量创建一个StreamBuilder。
    你不需要为每个状态创建一个类。
    你不需要为一个初始值创建一个get。
  使用 Get 的响应式编程就像使用 setState 一样简单。
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/introduction.html#%E4%BB%8B%E7%BB%8D


伍.GetX-Controller  (这篇有点乱糟糟的);
  在实际的项目开发过程中，我们不可能把UI代码、业务逻辑都放在一起处理，这样对项目的架构、代码的可读性、后期的维护将会是致命的
  好在GetX为我们提供了GetxController,GetxController主要的作用是用于UI代码与业务逻辑分离开来
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_controller.html#getxcontroller%E4%BB%8B%E7%BB%8D


陆.GetX-Controller-Watch
  这里主要讲解GetxController的事件监听，包括监听单个值、多个值等。
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_controller.html#getxcontroller%E4%BA%8B%E4%BB%B6%E7%9B%91%E5%90%AC


柒.GetX-Controller-LifeCycle
  这里主要讲解GetxController的生命周期，包括初始化、加载完成、销毁等。
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_controller.html#getxcontroller%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F


捌.GetX-Controller-UniqueID
  我们在开发的过程中会碰到一种情况，就是多个地方引用了同一个属性，但我只想单独更新某一个地方，那么就可以用UniqueID来进行区分
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_controller.html#getxcontroller-uniqueid


玖.GetX-国际化
  在我们使用系统自带MaterialApp来实现国际化配置，需要进行很多配置，而且还需要手动去依赖第三方组件，
  而使用GetX来实现国际化配置，你只需要一行代码即可实现切换，接下来我们看一下具体实现
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_binding.html


拾.GetX-Service
  这个类就像一个 GetxController，它共享相同的生命周期onInit()、onReady()、onClose()。 
  但里面没有 “逻辑”。它只是通知GetX的依赖注入系统，这个子类不能从内存中删除。
  所以如果你需要在你的应用程序的生命周期内对一个类实例进行绝对的持久化，那么就可以使用GetxService。
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_binding.html#get-service


拾壹.GetX-Binding
  在我们使用GetX状态管理器的时候，往往每次都是用需要手动实例化一个控制器，这样的话基本页面都需要实例化一次，
  这样就太麻烦了，而Binding 能解决上述问题，可以在项目初始化时把所有需要进行状态管理的控制器进行统一初始化
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_binding.html#getx-binding


拾贰.GetX-GetUtils
  GetUtils是getx为我们提供一些常用的工具类库，包括值是否为空、是否是数字、
  是否是视频、图片、音频、PPT、Word、APK、邮箱、手机号码、日期、MD5、SHA1等等
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_newss.html#getutils%E4%BB%8B%E7%BB%8D


拾叁.GetX-GetView
  GetView只是对已注册的Controller有一个名为controller的getter的const Stateless的Widget，
  如果我们只有单个控制器作为依赖项，那我们就可以使用GetView，而不是使用StatelessWidget，并且避免了写Get.Find()。
  GetView的使用方法非常简单，只是要将你的视图层继承自GetView并传入需要注册的控制器并Get.put()即可  
  更多API地址请看: 
    https://liujunmin.com/flutter/getx/getx_getview_getwidget.html#getview%E4%BB%8B%E7%BB%8D

拾肆.GetX-GetWidget [Deprecated]
  它 “缓存 “了一个Controller，由于_cache_，不能成为一个 “const Stateless”
  （因为_cache_，所以不能成为一个const Stateless）。当我们使用Get.create(()=>Controller())
   会在每次调用时生成一个新的Controller Get.find()`
   GetView 和 GetWidget相似, 但有一个区别, 他给出了相同的实例, 当与get.create结合使用时他变得非常有用
  更多API地址请看:
    https://liujunmin.com/flutter/getx/getx_getview_getwidget.html#getwidget%E4%BB%8B%E7%BB%8D
  
  在我们平时的开发过程中基本上很少会用到GetWidget，因为我们在大部分情况下都不需要缓存Controller。
  当我们的页面中只依赖了一个控制器的情况话，那么使用GetView将是很好的选择，因为他大大简化了我们的代码。
  

拾伍.GetX-GetCli
  文档参考地址:
    https://liujunmin.com/flutter/getx/getx_cli.html#getx-cli%E5%AE%89%E8%A3%85
    https://blog.csdn.net/u010755471/article/details/121488438?ops_request_misc=&request_id=&biz_id=102&utm_term=macos%20get-cli&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-0-121488438.142^v10^pc_search_result_control_group,157^v4^control&spm=1018.2226.3001.4187
  进一步了解详细内容请看 
    hello-getxcli

拾陆.GetX-GetConnetAndStateMixin
  代码案例:
    /Users/lee/MySkills/The-self-cultivation-of-a-programmer-MobileEcology/Dart/hello_getx/lib/GetX-GetConnetAndStateMixin/GetConnetAndStateExample.dart
