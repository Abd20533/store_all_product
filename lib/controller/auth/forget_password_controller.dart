import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class ForgetPassword extends GetxController {
  checkEmail();
  goToVerFiyCode();
}

class ForgetPasswordImpController extends ForgetPassword {
  late TextEditingController email;
  GlobalKey<FormState> keyFormState = GlobalKey();

  @override
  goToVerFiyCode() {
    Get.offAllNamed(
      AppNameRoutes.verFiyCode,
    );
  }

  @override
  checkEmail() {
    var dataKeyFormState = keyFormState.currentState;
    if (dataKeyFormState!.validate()) {
      goToVerFiyCode();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
