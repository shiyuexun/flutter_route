import 'package:flutter/material.dart';
import 'package:flutter_route/page1.dart';
import 'package:flutter_route/page3.dart';
import 'package:flutter_route/page4.dart';
import 'package:flutter_route/page5.dart';
import 'package:flutter_route/page6.dart';

import 'not_find_page.dart';


const String root = "/root";
const String page1 = "/page1";
const String page2 = "/page2";
const String page3 = "/page3";
const String page4 = "/page4";
const String page5 = "/page5";
const String page6 = "/page6";

Map<String, WidgetBuilder> routes = {
	root: (context) => Page1(),
	page1: (context) => Page1(),
	page2: (context) => NotFindPage(),
	page3: (context) => Page3(),
	page4: (context) =>
			Page4(text: ModalRoute
					.of(context)
					.settings
					.arguments),
};

Route<dynamic> generateRoute(RouteSettings settings) {
	print('====${settings.name}');
	switch (settings.name) {
		case page5:
			return MaterialPageRoute(builder: (context) => Page5());
		case page5:
			return MaterialPageRoute(builder: (context) => Page5());
		case page6:
			return MaterialPageRoute(builder: (context) => Page6(text: settings.arguments,));
		default:
			return MaterialPageRoute(builder: (context) => NotFindPage());
	}
}