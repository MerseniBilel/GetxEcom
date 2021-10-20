import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:getxecomerce/app/modules/auth/controllers/register_controller.dart';
import 'package:getxecomerce/app/modules/auth/views/widgets/form_field.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

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
                style: Get.theme.textTheme.headline4!.apply(
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
                        //
                      },
                      textLabel: "Name",
                      texthint: "Merseni Bilel",
                      onsaved: (value) {
                        //
                      },
                    ),
                    defaultSizedBox(),
                    FormTextField(
                      validator: (value) {
                        //
                      },
                      textLabel: "Email",
                      texthint: "example@email.com",
                      onsaved: (value) {
                        //
                      },
                    ),
                    defaultSizedBox(),
                    FormTextField(
                      validator: (value) {
                        //
                      },
                      textLabel: "password",
                      texthint: "* * * * * *",
                      onsaved: (value) {
                        //
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
                      onPressed: () {},
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
