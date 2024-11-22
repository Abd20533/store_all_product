import 'package:flutter/material.dart';
import 'package:store_all_things/my_import.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());

    /// SuccessResetPasswordControllerImp controller =Get.find();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            "Success",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppMyColor.grey),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Center(
                child: Icon(
                  Icons.check_circle_outline,
                  size: 200,
                  color: AppMyColor.primaryColor,
                ),
              ),
              const Text("data"),

              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                    text: " Go To LogIn",
                    onTap: () {
                      controller.goToPageLogIn();
                    },
                  ),
                ),
              )
              //.myOnTap(() {controller.signUp();}),
            ],
          ),
        ),
      ),
    );
  }
}
