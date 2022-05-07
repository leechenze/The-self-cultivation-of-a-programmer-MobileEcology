import 'package:flutter/material.dart';

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
    return Container(
        child: Center(
      child: Text(
        "Hello Flutter",
        textDirection: TextDirection.ltr,
      ),
    ));
  }
}
