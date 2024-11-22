import 'package:get/get.dart';
import 'package:store_all_things/controller/test_remote_controoler.dart';
import 'package:store_all_things/core/class/crud.dart';
import 'package:store_all_things/my_import.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInImpController(), fenix: true);
    Get.lazyPut(() => LocaleController(), fenix: true);
    Get.lazyPut(() => SignUpImpController(), fenix: true);
    Get.lazyPut(() => SuccessResetPasswordControllerImp(), fenix: true);
    Get.put(Crud());
    Get.put(TestControllerImp());
  }
}
//SuccessResetPasswordControllerImp controller =
//         Get.put(SuccessResetPasswordControllerImp());
