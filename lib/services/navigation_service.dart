import 'package:flutter/material.dart';

class NavigationService {
  factory NavigationService() => _getInstance();

  NavigationService._internal();

  static NavigationService _instance;

  static NavigationService _getInstance() {
    if (_instance == null) {
      _instance = new NavigationService._internal();
    }
    return _instance;
  }

  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  void goBack() {
    return navigatorKey.currentState.pop();
  }
}
