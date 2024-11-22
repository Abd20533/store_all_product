import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';

abstract class VerFiyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerFiyCodeControllerImpController extends VerFiyCodeController {
  late String verFiyCode;
  @override
  goToResetPassword() {
    Get.offAllNamed(
      AppNameRoutes.resetPassword,
    );
  }

  @override
  checkCode() {}
  // @override
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
