import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';
import 'package:store_all_things/core/localization/change_local.dart';
import 'package:store_all_things/view/my_widget/language/language.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose Language".tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLanguage(
                onTab: () {
                  controller.changeLanguage("ar");
                  Get.toNamed(AppNameRoutes.onBoarding);
                },
                textButton: "ar".tr),
            CustomButtonLanguage(
              textButton: "en".tr,
              onTab: () {
                controller.changeLanguage("en");
                Get.toNamed(AppNameRoutes.onBoarding);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Choose Theme Mode".tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLanguage(
                onTab: () {
                  controller.changeAppThemeMode("light");
                  //  Get.toNamed(AppNameRoutes.onBoarding);
                },
                textButton: "Light".tr),
            CustomButtonLanguage(
              textButton: "Dark".tr,
              onTab: () {
                controller.changeAppThemeMode("dark");
                //      Get.toNamed(AppNameRoutes.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
