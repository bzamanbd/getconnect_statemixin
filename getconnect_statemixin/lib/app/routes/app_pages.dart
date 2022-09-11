import 'package:get/get.dart';

import 'package:getconnect_statemixin/app/modules/home/bindings/home_binding.dart';
import 'package:getconnect_statemixin/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
