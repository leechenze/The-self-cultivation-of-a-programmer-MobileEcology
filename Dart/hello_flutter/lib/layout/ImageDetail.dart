import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ImageDetail extends StatelessWidget {
  final String imageUrl;

  ImageDetail(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            // 跳回去
            Navigator.pop(context);
          },
          child: Hero(
            tag: imageUrl,
            child: Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
