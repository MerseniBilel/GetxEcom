import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxecomerce/app/modules/auth/controllers/firebase_controller.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? name;

  // firebase stuff

  String? emailValidator(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return "Email must be valid";
    }
  }

  String? passwordValidator(String? value) {
    if (!GetUtils.isLengthBetween(value, 6, 10)) {
      return "Password must be between 6 and 10";
    }
  }

  void login() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      FirebaseController().singInWithEmailAndPassword(email!, password!);
    }
  }
}
