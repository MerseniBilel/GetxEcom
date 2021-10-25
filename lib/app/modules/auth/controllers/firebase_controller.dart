import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseController extends GetxController {
  // ? creat a firebaseAuth instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //? create a GoogleSigIn instance and put the scopes on the email
  final GoogleSignIn _googleSignIn =
      GoogleSignIn(scopes: <String>["email", "profile"]);
  //? create a facebookAuth instance
  final FacebookAuth _facebookAuth = FacebookAuth.instance;

  void signInWithGoogle() async {
    //?  -1- call the google sign in so a model will popUp to the user
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser == null) {
      Get.snackbar("cancel", "Google sign in was canceled");
      return null;
    }

    //? -2- googleUser variable contain all the user info(name, email, token, image)
    //? authenticate with the user info
    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    // * create a variable contain the user credentials and save it into firebase
    final credentials = GoogleAuthProvider.credential(
      accessToken: googleAuth!.accessToken,
      idToken: googleAuth.idToken,
    );
    // ? save to firebase
    final UserCredential userCredential =
        await _firebaseAuth.signInWithCredential(credentials);
    print(userCredential.user);
  }

  void signInWithFacebook() async {
    final LoginResult? loginResult = await _facebookAuth.login();
    if (loginResult == null) {
      Get.snackbar("cancel", "Facebook sign in was canceled");
      return null;
    }

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(
      loginResult.accessToken!.token,
    );

    final UserCredential userCredential =
        await _firebaseAuth.signInWithCredential(facebookAuthCredential);
    print(userCredential.user);
  }

  void singInWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print(userCredential);
    } catch (e) {
      Get.snackbar("Error", "sign in faild");
    }
  }
}
