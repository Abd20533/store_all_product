import 'package:flutter/material.dart';
import 'package:store_all_things/core/constant/image_asset.dart';

class LogAuth extends StatelessWidget {
  const LogAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color:
          // kColorTextFromScreenLogin.withOpacity(0.5),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.grey[100],
          backgroundImage: const AssetImage(AppImageAsset.onBoardingModel_6),
        ));
  }
}
