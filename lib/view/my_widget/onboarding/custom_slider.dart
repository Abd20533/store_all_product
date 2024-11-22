import 'package:flutter/material.dart';
import 'package:store_all_things/controller/on_boarding_controller.dart';
import 'package:store_all_things/data/data_sources/static/static.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingModel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  onBoardingModel[1].body!,
                  //   onBoardingModel[index].title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Image.asset(
                  onBoardingModel[index].image!,
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 4,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      onBoardingModel[index].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2, color: Colors.grey, fontSize: 17),
                    ))
              ],
            ),
          );
        });
  }
}
