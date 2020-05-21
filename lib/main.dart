import 'package:flutter/material.dart';
import 'package:flutter_route/not_find_page.dart';
import 'package:flutter_route/page1.dart';
import 'package:flutter_route/page2.dart';
import 'package:flutter_route/page3.dart';
import 'package:flutter_route/page4.dart';
import 'package:flutter_route/page5.dart';
import 'package:flutter_route/router.dart';
import 'package:flutter_route/services/navigation_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: NavigationService().navigatorKey,
        routes: routes,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Page2(),
        initialRoute: root,
        onGenerateRoute: generateRoute,
        onUnknownRoute: (settings) =>
            MaterialPageRoute(builder: (context) => NotFindPage()));
  }
}
