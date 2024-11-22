// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_all_things/my_import.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // LogInImpController controller = Get.put(LogInImpController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppMyColor.blue.withOpacity(0.6),

            // backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            // backgroundColor: Colors.transparent,
            title: Text(
              "Log In",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppMyColor.grey),
            ),
            flexibleSpace: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight),
                child: SizedBox()),
          ),
          body: WillPopScope(
            onWillPop: () => alertExitApp(),
            child: GetBuilder<LogInImpController>(
              builder: (controller) {
                return Form(
                  key: controller.keyFormState,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 38.0, vertical: 5),
                    child: ListView(
                      // reverse: true,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const LogAuth(),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomTextTitle(text: "Welcome Back"),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomTextTitleBody(
                              text:
                                  "Sign In With Your Email And password Or Continue With Social media",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            CustomTextFormField(
                              typeTextInputType: TextInputType.emailAddress,
                              valid: (val) {
                                return validInput(val!, 5, 100, "email");
                              },
                              myController: controller.email,
                              labelText: "Email",
                              hintText: " enter your Email",
                              iconData: Icons.email_outlined,
                              //    myController: myController
                            ),
                            CustomTextFormField(
                              obscureTextSuffixIcon: true,
                              myOnTabIcon: () => controller.showPassword(),
                              obscureText: controller.isObscureText,
                              valid: (val) {
                                return validInput(val!, 5, 30, "Password");
                              },
                              typeTextInputType: TextInputType.text,
                              myController: controller.password,
                              labelText: "Password",
                              hintText: " enter your Password",
                              iconData: Icons.lock_outline,
                              //    myController: myController
                            ),
                            const Text(
                              "Forget password",
                              textAlign: TextAlign.end,
                            ).onTap(() {
                              controller.goToForgetPassword();
                            }),
                            const SizedBox(
                              height: 25,
                            ),
                            CustomButtonAuth(
                              onTap: () {
                                controller.login();
                              },
                              text: " Log In ",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            CustomTextSignupOrSignIn(
                              text1: "Don't have an account?  ",
                              text2: "sign up",
                              onTap: () {
                                controller.goToSinUp();
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
