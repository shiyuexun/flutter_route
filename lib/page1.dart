import 'package:flutter/material.dart';
import 'package:flutter_route/main.dart';
import 'package:flutter_route/page2.dart';
import 'package:flutter_route/router.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.pushNamed(context, page2);

          if (navigationResult == 'from_back') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Navigation from back'),
                    ));
          } else if (navigationResult == 'from_button') {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Navigation from button'),
                    ));
          }
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            color: Colors.blue,
            child: Text("page3"),
            onPressed: () {
              Navigator.of(context).pushNamed(page3, arguments: "hi");
            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("page4"),
            onPressed: () {
              Navigator.of(context).pushNamed(page4, arguments: "hello");

            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("page5"),
            onPressed: () {
              Navigator.of(context).pushNamed(page5);

            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("page6"),
            onPressed: () {
              Navigator.of(context).pushNamed(page6, arguments: "world");

            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("404"),
            onPressed: () {
              Navigator.of(context).pushNamed("404", arguments: "world");
            },
          ),
        ],
      ),
    );
  }
}
