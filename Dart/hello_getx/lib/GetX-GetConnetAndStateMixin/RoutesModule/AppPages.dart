import 'package:get/get.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/Bindings/MovieBinding.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/View/MovieListView.dart';

class AppPages {
  static const INIT = '/movie';
  static final routes = [
    GetPage(
      name: '/movie',
      page: () => MovieListView(),
      binding: MovieBinding(),
    ),
  ];
}
