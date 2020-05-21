import 'package:flutter/material.dart';
import 'package:flutter_route/view_model.dart';

class Page6 extends StatelessWidget {
  final String text;
  final ViewModel viewModel = ViewModel();

  Page6({
    Key key,
    @required this.text, // 接收一个text参数
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.goPage1();
        },
      ),
      body: Container(
        child: Center(
          child: Text('Page 6参数是$text',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
