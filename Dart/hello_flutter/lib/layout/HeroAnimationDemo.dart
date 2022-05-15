import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'ImageDetail.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HeroAnimationDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: HeroAnimationDemo(),
    );
  }
}

class HeroAnimationDemo extends StatelessWidget {
  const HeroAnimationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GridView.extent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 20,
        children: List.generate(
          20,
          (int ind) {
            String imageUrl = 'https://picsum.photos/id/$ind/300/400';
            // 通过这个组件监听触碰事件;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ImageDetail(imageUrl);
                    },
                  ),
                );
              },
              // Tag只需要保证两个页面是一样的就行
              child: Hero(
                child: Image.network(imageUrl),
                tag: imageUrl,
              ),
            );
          },
        ),
      ),
    );
  }
}
