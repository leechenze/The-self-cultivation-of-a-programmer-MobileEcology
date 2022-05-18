import 'package:flutter/material.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/View/MovieListView.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MovieListView();
  }
}
