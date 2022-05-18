import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/Models/MovieModel.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/Providers/MovieProvider.dart';
import 'package:get/get.dart';

class MovieController extends GetxController with StateMixin<List<dynamic>> {
  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var movieList = List<MovieModel>.empty().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovie();
    super.onInit();
  }

  void fetchMovie() async {
    MovieProvider.fetchMovie().then(
      (response) {
        change(
          response,
          status: RxStatus.success(),
        );
      },
      onError: (err) {
        print('========response2========');
        print(err.toString());
        change(
          err,
          status: RxStatus.error(err.toString()),
        );
      },
    );
  }
}
