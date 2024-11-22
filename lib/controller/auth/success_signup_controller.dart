import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogIn();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToPageLogIn() {
    Get.offAllNamed(AppNameRoutes.login);
  }
}
