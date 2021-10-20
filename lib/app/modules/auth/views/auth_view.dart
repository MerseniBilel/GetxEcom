import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxecomerce/app/modules/auth/views/widgets/form_field.dart';
import 'package:getxecomerce/app/routes/app_pages.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        // this will become an animated container with fade in animation
        padding: EdgeInsets.all(Get.width * .1 / 3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              defaultSizeBox(),
              Form(
                key: controller.formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    defaultSizeBox(),
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
                    defaultSizeBox(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Get.theme.primaryColor,
                      ),
                      onPressed: () {
                        controller.login();
                      },
                      child: Padding(
                        padding: EdgeInsets.all(Get.width * .1 / 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Sign In",
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
              defaultSizeBox(),
              Container(
                child: Text(
                  "-OR-",
                  style: Get.theme.textTheme.headline6!.apply(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                alignment: Alignment.center,
              ),
              defaultSizeBox(),
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
              defaultSizeBox(),
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

  SizedBox defaultSizeBox() {
    return SizedBox(
      height: Get.height * .1 / 4,
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome,",
              style: Get.theme.textTheme.headline5!.apply(
                color: Colors.black,
              ),
            ),
            const Text(
              "Sign in to Continue",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            )
          ],
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(Routes.REGISTER);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: Get.theme.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
