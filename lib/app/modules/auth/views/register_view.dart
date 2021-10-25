import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:getxecomerce/app/modules/auth/controllers/firebase_controller.dart';
import 'package:getxecomerce/app/modules/auth/controllers/register_controller.dart';
import 'package:getxecomerce/app/modules/auth/views/widgets/form_field.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({Key? key}) : super(key: key);

  final FirebaseController _firebaseController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(Get.width * .1 / 3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up,",
                style: Get.theme.textTheme.headline5!.apply(
                  color: Colors.black,
                ),
              ),
              const Text(
                "Sign Up to Continue",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              defaultSizedBox(),
              Form(
                key: controller.formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormTextField(
                      validator: (value) {
                        return controller.nameValidator(value);
                      },
                      textLabel: "Name",
                      texthint: "Merseni Bilel",
                      onsaved: (value) {
                        controller.name = value;
                      },
                    ),
                    defaultSizedBox(),
                    FormTextField(
                      validator: (value) {
                        return controller.emailValidator(value);
                      },
                      textLabel: "Email",
                      texthint: "example@email.com",
                      onsaved: (value) {
                        controller.email = value;
                      },
                    ),
                    defaultSizedBox(),
                    FormTextField(
                      validator: (value) {
                        return controller.passwordValidator(value);
                      },
                      textLabel: "password",
                      texthint: "* * * * * *",
                      onsaved: (value) {
                        controller.password = value;
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(top: Get.height * .1 / 10),
                      child: const Text(
                        "forget password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    defaultSizedBox(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Get.theme.primaryColor,
                      ),
                      onPressed: () {
                        controller.register();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(Get.width * .1 / 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              defaultSizedBox(),
              Container(
                child: Text(
                  "-OR-",
                  style: Get.theme.textTheme.headline6!.apply(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                alignment: Alignment.center,
              ),
              defaultSizedBox(),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(Get.width * .1 / 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: Get.width * .1 / 3),
                        child: Image(
                          height: Get.width * .1 * .8,
                          width: Get.width * .1 * .8,
                          image: const AssetImage(
                            "assets/images/Facebook.png",
                          ),
                        ),
                      ),
                      const Text(
                        "Sign In With Facebook",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              defaultSizedBox(),
              ElevatedButton(
                onPressed: () {
                  _firebaseController.signInWithGoogle();
                },
                child: Padding(
                  padding: EdgeInsets.all(Get.width * .1 / 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: Get.width * .1 / 3),
                        child: Image(
                          height: Get.width * .1 * .8,
                          width: Get.width * .1 * .8,
                          image: const AssetImage("assets/images/Google.png"),
                        ),
                      ),
                      const Text(
                        "Sign In With Google",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox defaultSizedBox() {
    return SizedBox(
      height: Get.height * .1 / 4,
    );
  }
}
