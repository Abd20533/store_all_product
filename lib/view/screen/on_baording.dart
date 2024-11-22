import 'package:store_all_things/my_import.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomSliderOnBoarding(),
        ),
        Expanded(
            child: Column(
          children: [
            DotControllerOnBoarding(),
            Spacer(
              flex: 2,
            ),
            CustomButtonOnBoarding(),
          ],
        ))
      ],
    )));
  }
}
