import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_all_things/core/constant/routes_name.dart';
import 'package:store_all_things/core/services/services.dart';
import 'package:store_all_things/data/data_sources/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int indexPage);
  testPageTimer();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  Timer? timer;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    update();

    if (currentPage < onBoardingModel.length) {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    } else {
      // currentPage = 0;
      myServices.mySharedPreferences.setString("NoForTheFirstTime", "1");
      Get.offAllNamed(AppNameRoutes.login);
    }
  }

  @override
  onPageChanged(int indexPage) {
    currentPage = indexPage;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    testPageTimer();
    super.onInit();
  }

  @override
  testPageTimer() {
    timer = Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        if (currentPage < 4) {
          next();
        }
      },
    );
  }
}
