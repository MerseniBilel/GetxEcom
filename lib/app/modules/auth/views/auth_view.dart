import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxecomerce/app/modules/auth/views/widgets/form_field.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(Get.width * .1 / 3),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              defaultSizeBox(),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormTextField(
                      textLabel: "Email",
                      texthint: "example@email.com",
                      onsaved: () {},
                    ),
                    defaultSizeBox(),
                    FormTextField(
                      textLabel: "password",
                      texthint: "* * * * * *",
                      onsaved: () {},
                    ),
                    Container(
                      padding: EdgeInsets.only(top: Get.height * .1 / 10),
                      child: const Text(
                        "forget password?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.bottomRight,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: Get.height * .1),
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
                              padding:
                                  EdgeInsets.only(right: Get.width * .1 / 3),
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
                              padding:
                                  EdgeInsets.only(right: Get.width * .1 / 3),
                              child: Image(
                                height: Get.width * .1 * .8,
                                width: Get.width * .1 * .8,
                                image: const AssetImage(
                                    "assets/images/Google.png"),
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
              style: Get.theme.textTheme.headline4!.apply(
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
          onPressed: () {},
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
