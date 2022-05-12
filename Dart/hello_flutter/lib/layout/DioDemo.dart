import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:convert';

// 将Home 组件抽离出来;
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DioDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: DioDemo(),
    );
  }
}

class DioDemo extends StatelessWidget {
  DioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ElevatedButton(
          child: Text('Click send request'),
          onPressed: () {
            print('触发 点击按钮');
            // 调用 Http请求
            getIpAddress();
          },
        ),
      ),
    );
  }

  void getIpAddress() async {
    try {
      const String url = 'https://httpbin.org/ip';
      Response res = await Dio().get(url);
      print(res);
      print(res.data);
      String ip = res.data['origin'];
      print(ip);
    } catch (err) {
      print(err);
    }
  }
}
