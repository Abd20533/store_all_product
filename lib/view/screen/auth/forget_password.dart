import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_all_things/controller/auth/forget_password_controller.dart';
import 'package:store_all_things/my_import.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordImpController controller =
        Get.put(ForgetPasswordImpController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Forget password",
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
              const CustomTextTitle(text: "Check Email"),
              const SizedBox(
                height: 10,
              ),
              const CustomTextTitleBody(
                text:
                    "Please Enter Your Email Address To Recive a VerFiction Code",
              ),
              const SizedBox(
                height: 25,
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

              const SizedBox(
                height: 25,
              ),

              CustomButtonAuth(
                onTap: () {
                  controller.checkEmail();
                },
                text: " Check ",
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
