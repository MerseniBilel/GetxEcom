import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? name;

  // firebase stuff
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);

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
      print(email);
      print(password);
    }
  }

  void signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser!.authentication;

    print(googleUser);
    print(googleAuth);

    // create a new creadential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth!.accessToken,
      idToken: googleAuth.idToken,
    );

    await _firebaseAuth.signInWithCredential(credential);
  }
}
