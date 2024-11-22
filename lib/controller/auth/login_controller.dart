import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class LogIn extends GetxController {
  login();
  goToSinUp();
  goToForgetPassword();
}

class LogInImpController extends LogIn {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> keyFormState = GlobalKey();
  bool isObscureText = true;

  showPassword() {
    isObscureText = isObscureText == true ? false : true;
    update();
  }

  @override
  goToSinUp() {
    ///important to  delete information controllers ex:controller.name or ....
    // Get.delete<LogInImpController>();

    Get.offNamed(
      AppNameRoutes.singUp,
    );
  }

  @override
  login() {
    var formData = keyFormState.currentState;
    if (formData!.validate()) {
      Get.offAllNamed(AppNameRoutes.home);
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(
      AppNameRoutes.forGetPassword,
    );
  }
}

///flutter pub add animate_icons
///flutter pub add icons_animate
//flutter pub add animated_icon_button_flutter
///flutter pub add flutter_animated_icons
//flutter pub add rive_animated_icon
