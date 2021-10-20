import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? name;

  String? emailValidator(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return "Email must be valid";
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (!GetUtils.isLengthBetween(value, 6, 10)) {
      return "Password must be between 6 and 10";
    }

    return null;
  }

  void login() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      print(email);
      print(password);
    }
  }
}
