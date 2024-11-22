import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/class/status_request.dart';
import 'package:store_all_things/my_import.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    /// to work in f MyBinding
    /// SignUpImpController controller = Get.put(SignUpImpController());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Sign Up",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppMyColor.grey),
          ),
        ),
        body: WillPopScope(
          onWillPop: () => alertExitApp(),
          child: GetBuilder<SignUpImpController>(
            builder: (controller) =>
                controller.statusRequest != StatusRequest.loading
                    ? Form(
                        key: controller.keyFormState,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 38.0, vertical: 15),
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              //const LogAuth(),

                              const CustomTextTitle(text: "Welcome Back"),
                              const SizedBox(
                                height: 10,
                              ),
                              const CustomTextTitleBody(
                                text:
                                    "Sing Up  With Your Email And password Or Continue With Social media",
                              ),
                              const SizedBox(
                                height: 25,
                              ),

                              CustomTextFormField(
                                typeTextInputType: TextInputType.name,
                                valid: (val) {
                                  return validInput(val!, 5, 30, "userName");
                                },
                                myController: controller.name,
                                labelText: "Name",
                                hintText: " enter your Name",
                                iconData: Icons.person_outline,
                                //    myController: myController
                              ),
                              CustomTextFormField(
                                typeTextInputType: TextInputType.emailAddress,
                                valid: (val) {
                                  return validInput(val!, 5, 30, "email");
                                },
                                myController: controller.email,
                                labelText: "Email",
                                hintText: " enter your Email",
                                iconData: Icons.wifi_calling,
                                //    myController: myController
                              ),
                              CustomTextFormField(
                                typeTextInputType: TextInputType.phone,
                                valid: (val) {
                                  return validInput(val!, 5, 30, "PhoneNumber");
                                },
                                myController: controller.phone,
                                labelText: "Phone",
                                hintText: " enter your Phone",
                                iconData: Icons.email_outlined,
                                //    myController: myController
                              ),
                              CustomTextFormField(
                                myOnTabIcon: () => controller.showPassword(),
                                obscureText: controller.isObscureText,
                                obscureTextSuffixIcon: true,
                                typeTextInputType: TextInputType.text,
                                valid: (val) {
                                  return validInput(val!, 5, 30, "Password");
                                },
                                myController: controller.password,
                                labelText: "Password",
                                hintText: " enter your Password",
                                iconData: Icons.lock_outline,
                                //    myController: myController
                              ),

                              const SizedBox(
                                height: 25,
                              ),
                              const CustomButtonAuth(
                                text: " Sing Up ",
                              ).myOnTap(() {
                                controller.signUp();
                              }),
                              const SizedBox(
                                height: 25,
                              ),
                              CustomTextSignupOrSignIn(
                                text1: " have an account?  ",
                                text2: "Log In ",
                                onTap: () {
                                  controller.goToLogIn();
                                },
                              )
                            ],
                          ),
                        ),
                      )
                    : Center(
                        child: CircularProgressIndicator(
                          color: AppMyColor.blue,
                        ),
                      ),
          ),
        ));
  }
}
