import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class VerFiyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerFiyCodeSignUpControllerImpController
    extends VerFiyCodeSignUpController {
  late String verFiyCode;
  @override
  goToSuccessSignUp() {
    Get.offAllNamed(
      AppNameRoutes.successSignUp,
    );
  }

  @override
  checkCode() {}

  @override
  void onInit() {
    ///
    super.onInit();
  }
}
