import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store_all_things/my_import.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordImpController controller =
        Get.put(ResetPasswordImpController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Reset Password",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppMyColor.grey),
        ),
      ),
      body: Form(
        key: controller.keyFormState,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              //const LogAuth(),
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitle(text: "New Password"),
              const SizedBox(
                height: 10,
              ),
              const CustomTextTitleBody(
                text: "pleas enter new password",
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
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
              CustomTextFormField(
                typeTextInputType: TextInputType.text,
                valid: (val) {
                  return validInput(val!, 5, 30, "Password");
                },
                myController: controller.password,
                labelText: "Password",
                hintText: " Re enter your  Password",
                iconData: Icons.lock_outline,
                //    myController: myController
              ),

              CustomButtonAuth(
                text: " Save ",
                onTap: () {
                  controller.resetPassword();
                },
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
