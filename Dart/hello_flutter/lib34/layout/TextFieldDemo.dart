import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("TextFieldDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String phone = '';
  String username = '';
  String password = '';
  String description = '';

  void _register() {
    print('phone  $phone');
    print('username $username');
    print('password $password');
    print('description  $description');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.phone_iphone,
                  color: Colors.cyan,
                ),
                labelText: "手机号",
                labelStyle: TextStyle(
                  color: Colors.purple,
                ),
                hintText: "请输入手机号",
                hintStyle: TextStyle(
                  color: Colors.green,
                ),
              ),
              maxLength: 11,
              onChanged: (String val) {
                setState(() {
                  phone = val;
                });
              },
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.code),
                labelText: "密码",
                hintText: "请输入密码",
              ),
              onChanged: (String val) {
                setState(() {
                  password = val;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "简介",
                hintText: "请输入简介",
              ),
              onChanged: (String val) {
                setState(() {
                  description = val;
                });
              },
              maxLines: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _register();
                },
                child: Text('提交'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
