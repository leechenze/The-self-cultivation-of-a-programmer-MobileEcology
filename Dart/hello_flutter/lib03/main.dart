import 'package:flutter/material.dart';
import 'basic/text.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
