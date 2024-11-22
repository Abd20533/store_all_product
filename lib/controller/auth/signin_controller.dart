import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/class/status_request.dart';
import 'package:store_all_things/core/constant/routes_name.dart';
import 'package:store_all_things/core/functions/handling_data_controller.dart';
import 'package:store_all_things/data/data_sources/remote/auth/sign_up_data.dart';

abstract class SignUp extends GetxController {
  signUp();
  goToSinIn();
}

class SignUpImpController extends SignUp {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController name;
  late TextEditingController phone;
  GlobalKey<FormState> keyFormState = GlobalKey();
  bool isObscureText = true;

  ///
  SignUpData testData = SignUpData(Get.find());
  List data = [];
  StatusRequest? statusRequest;

  ///
  showPassword() {
    isObscureText = isObscureText == true ? false : true;
    update();
  }

  @override
  goToSinIn() {
    Get.offAllNamed(
      AppNameRoutes.verFiyCodeSignUp,
    );
    Get.delete<SignUpImpController>();
  }

  goToLogIn() {
    Get.offAllNamed(
      AppNameRoutes.login,
    );
  }

  @override
  signUp() async {
    var dataKeyFormState = keyFormState.currentState;
    if (dataKeyFormState!.validate()) {
      goToSinIn();

      statusRequest = StatusRequest.loading;
      update();

      var response = await testData.getData(data: {});

      statusRequest = handlingDataController(response);

      if (StatusRequest.success == statusRequest) {
        goToSinIn();

        data.addAll(response["data"]);
      } else {
        return Get.defaultDialog(
          title: "phone is  on",
          middleText: "the number or email is not",
        );
        update();
      }
      update();

      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    name = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    phone.dispose();
    name.dispose();
    password.dispose();
    super.dispose();
  }
}
