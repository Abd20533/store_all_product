// resetpassword
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccess();
}

class ResetPasswordImpController extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> keyFormState = GlobalKey();

  @override
  goToSuccess() {
    Get.offAllNamed(
      AppNameRoutes.successResetPassword,
    );
  }

  @override
  resetPassword() {
    if (keyFormState.currentState!.validate()) {
      goToSuccess();
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();

    super.dispose();
  }
}
