import 'package:get/get.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/Controller/MovieController.dart';

class MovieBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MovieController());
  }
}
