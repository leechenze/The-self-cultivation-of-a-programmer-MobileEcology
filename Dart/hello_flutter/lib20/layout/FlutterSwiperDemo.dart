import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FlutterSwiperDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: FlutterSwiperDemo(),
    );
  }
}

class FlutterSwiperDemo extends StatelessWidget {
  FlutterSwiperDemo({Key? key}) : super(key: key);

  final List<String> imgs = [
    'assets/Images/course/WechatIMG96.png',
    'assets/Images/course/WechatIMG97.png',
    'assets/Images/course/WechatIMG102.png',
    'assets/Images/course/WechatIMG103.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Color.fromARGB(255, 255, 0, 0),
          padding: EdgeInsets.all(10),
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            // 导航点
            pagination: SwiperPagination(),
            // 箭头导航
            control: SwiperControl(),
          ),
        ),
        Container(
          color: Color.fromARGB(255, 40, 255, 7),
          padding: EdgeInsets.all(10),
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            viewportFraction: .8,
            scale: .8,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 255, 255, 0),
          padding: EdgeInsets.all(10),
          height: 200,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imgs[index],
                fit: BoxFit.cover,
              );
            },
            itemWidth: 300,
            itemHeight: 300,
            layout: SwiperLayout.STACK,
          ),
        ),
      ],
    );
  }
}
