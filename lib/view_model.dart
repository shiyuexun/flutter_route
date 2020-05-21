import 'package:flutter_route/router.dart';
import 'package:flutter_route/services/navigation_service.dart';

class ViewModel {
  final NavigationService _navigationService = NavigationService();

  Future goPage1() async{
  	/// 模拟请求数据后调到首页
	  await Future.delayed(Duration(seconds: 1));
	  _navigationService.navigateTo(page1);
  }

}
