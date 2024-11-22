import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:store_all_things/controller/on_boarding_controller.dart';
import 'package:store_all_things/core/constant/my_color.dart';
import 'package:store_all_things/core/functions/check_internet.dart';
import 'package:store_all_things/core/mycore/extentions.dart';
import 'package:get/get.dart';
import 'package:store_all_things/data/data_sources/static/static.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  intiData() async {
    res = await checkInternet();
    // print(res);
  }

  @override
  void initState() {
    intiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color accentPurpleColor = const Color(0xFF6A53A1);
    // Color primaryColor = const Color(0xFF121212);
    Color accentPinkColor = const Color(0xFFF99BBD);
    Color accentDarkGreenColor = const Color(0xFF115C49);
    Color accentYellowColor = const Color(0xFFFFB612);
    Color accentOrangeColor = const Color(0xFFEA7A3B);

    TextStyle? createStyle(Color color) {
      ThemeData theme = Theme.of(context);
      return theme.textTheme.displaySmall?.copyWith(color: color);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("test"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            OtpTextField(
              numberOfFields: 6,
              borderColor: accentPurpleColor,
              focusedBorderColor: accentPurpleColor,
              styles: [
                createStyle(accentPurpleColor),
                createStyle(accentYellowColor),
                createStyle(accentDarkGreenColor),
                createStyle(accentOrangeColor),
                createStyle(accentPinkColor),
                createStyle(accentPurpleColor),
              ],
              keyboardType: TextInputType.phone,
              borderRadius: BorderRadius.circular(90),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: const BorderSide(color: Colors.red, width: 4),
              )),
              showFieldAsBox: false,
              borderWidth: 4.0,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here if necessary
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {},
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImp co = Get.put(OnBoardingControllerImp());

    return Scaffold(
      body: SizedBox(
        height: 400,
        width: 200,
        //  width: double.infinity,
        child: Column(
          children: [
            GetBuilder<OnBoardingControllerImp>(
              builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      onBoardingModel.length,
                      (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        width: controller.currentPage == index ? 14 : 6,
                        height: controller.currentPage == index ? 12 : 6,
                        decoration: BoxDecoration(
                            color: AppMyColor.primaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        duration: const Duration(milliseconds: 900),
                      ),
                    ),
                  ],
                );
              },
            ),
            GetBuilder<OnBoardingControllerImp>(
              builder: (controller) {
                return Center(
                  child: Text(
                    controller.currentPage.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                );
              },
            ),
            Center(
              child: LottieBuilder.asset(
                "assets/Lottie/Animation_new2.json",
                //    repeat: true
              ),
            ),
          ],
        ),
        //Animation_new1.json
      ).center(),
    );
  }
}
