import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  String? name;
  String? email;
  String? password;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String? emailValidator(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return "Email must be a valid one";
    }
  }

  String? passwordValidator(String? value) {
    if (!GetUtils.isLengthBetween(value, 6, 10)) {
      return "Password lengh must be between 6 and 10";
    }
  }

  String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return "Can not be empty";
    }
  }

  void register() {
    if (formkey.currentState!.validate()) {
      formkey.currentState!.save();
      print(name);
      print(email);
      print(password);
    }
  }
}
