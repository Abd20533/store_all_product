import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goToVerFiyCodeSignUp();
}

class CheckEmailControllerController extends CheckEmailController {
  late TextEditingController email;
  GlobalKey<FormState> keyFormState = GlobalKey();

  @override
  goToVerFiyCodeSignUp() {
    Get.offAllNamed(
      AppNameRoutes.verFiyCodeSignUp,
    );
  }

  @override
  checkEmail() {
    var dataKeyFormState = keyFormState.currentState;

    if (dataKeyFormState!.validate()) {}
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
