import 'package:flutter/material.dart';
import 'basic/hello.dart';

void main() {
  // runApp(Center(
  //   child: new Text(
  //     "Hello Flutter",
  //     textDirection: TextDirection.ltr,
  //   ),
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
