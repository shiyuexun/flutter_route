import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  final String text;

  Page4({
    Key key,
    @required this.text, // 接收一个text参数
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _popNavigationWithResult(context, 'from_button');
        },
      ),
      body: Container(
        child: Center(
          child: Text('Page 4的参数是$text',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }

  void _popNavigationWithResult(BuildContext context, dynamic result) {
    Navigator.pop(context, result);
  }
}
