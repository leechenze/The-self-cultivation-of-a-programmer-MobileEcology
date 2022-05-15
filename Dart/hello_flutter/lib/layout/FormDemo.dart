import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FormDemo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
      ),
      body: FormDemo(),
    );
  }
}

class FormDemo extends StatefulWidget {
  FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  // 声明 GlobalKey
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _phone = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '手机号',
                  ),
                  validator: (val) {
                    RegExp reg = new RegExp(r'^\d{11}$');
                    if (!reg.hasMatch(val.toString())) {
                      return '手机号非法';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    print('_phone onSave');
                    _phone = val.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: '密码',
                  ),
                  validator: (val) {
                    return val.toString().length < 6 ? '密码长度不够' : null;
                  },
                  onSaved: (val) {
                    print('_password onSave');
                    _password = val.toString();
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // 提交表单
                            print('Form Save - Before');
                            _formKey.currentState!.save();
                            print('Form Save - After');
                            print(_phone);
                            print(_password);
                          }
                        },
                        child: Text('提交'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.reset();
                        },
                        child: Text('重置'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
