import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Page 3的参数是$args',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
