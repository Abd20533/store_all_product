import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToPageLogIn();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogIn() {
    Get.offAllNamed(AppNameRoutes.login);
  }
}
