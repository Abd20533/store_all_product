import 'package:get/get.dart';

import 'package:store_all_things/my_import.dart';

class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
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
    );
  }
}
