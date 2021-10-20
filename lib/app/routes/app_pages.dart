import 'package:get/get.dart';

import 'package:getxecomerce/app/modules/auth/bindings/auth_binding.dart';
import 'package:getxecomerce/app/modules/auth/views/auth_view.dart';
import 'package:getxecomerce/app/modules/auth/views/register_view.dart';
import 'package:getxecomerce/app/modules/home/bindings/home_binding.dart';
import 'package:getxecomerce/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const AUTH = Routes.AUTH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => const AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterView(),
      binding: AuthBinding(),
    ),
  ];
}
