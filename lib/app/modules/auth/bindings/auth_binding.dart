import 'package:get/get.dart';
import 'package:getxecomerce/app/modules/auth/controllers/firebase_controller.dart';

import 'package:getxecomerce/app/modules/auth/controllers/register_controller.dart';

import '../controllers/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<FirebaseController>(() => FirebaseController());
  }
}
