import 'package:flutter/material.dart';
import 'package:hello_getx/GetX-GetConnetAndStateMixin/MovieModule/Controller/MovieController.dart';
import 'package:get/get.dart';

class MovieListView extends GetView<MovieController> {
  // 当页面只有一个组件时, 那就继承 GetView 这样就不用再声明controller了;
  final MovieController movieController = Get.put(MovieController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: controller.obx(((data) => ListView.builder(
            // 此时 data 就是 response
            // itemCount: controller.movieList.length,
            itemCount: data?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            // controller.movieList[index].itemCover,
                            data?[index].itemCover,
                            width: 150,
                            height: 100,
                            fit: BoxFit.fill,
                            // color: Colors.orange,
                            // colorBlendMode: BlendMode.color,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // controller.movieList[index].author,
                              data?[index].author,
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.grey.shade300,
                    height: 2,
                  )
                ],
              );
            },
          ))),
    );
  }
}







        // body: Obx(() {
        //   if (controller.isLoading.value) {
        //     return Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   } else {
        //     return ListView.builder(
        //       itemCount: controller.movieList.length,
        //       itemBuilder: (context, index) {
        //         return Column(
        //           children: [
        //             Row(
        //               children: [
        //                 Container(
        //                   width: 100,
        //                   height: 120,
        //                   margin: EdgeInsets.all(10),
        //                   child: ClipRRect(
        //                     borderRadius: BorderRadius.circular(6),
        //                     child: Image.network(
        //                       controller.movieList[index].itemCover,
        //                       width: 150,
        //                       height: 100,
        //                       fit: BoxFit.fill,
        //                       // color: Colors.orange,
        //                       // colorBlendMode: BlendMode.color,
        //                     ),
        //                   ),
        //                 ),
        //                 Flexible(
        //                   child: Column(
        //                     mainAxisAlignment: MainAxisAlignment.start,
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Text(
        //                         controller.movieList[index].author,
        //                         style: TextStyle(
        //                             color: Colors.black45, fontSize: 16),
        //                       )
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Container(
        //               color: Colors.grey.shade300,
        //               height: 2,
        //             )
        //           ],
        //         );
        //       },
        //     );
        //   }
        // }),