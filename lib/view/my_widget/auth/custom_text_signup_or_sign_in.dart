import 'package:flutter/material.dart';
import 'package:store_all_things/my_import.dart';

class CustomTextSignupOrSignIn extends StatelessWidget {
  const CustomTextSignupOrSignIn(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1;
  final String text2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          // textAlign: TextAlign.end,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(
                color: AppMyColor.primaryColor, fontWeight: FontWeight.bold),
            // textAlign: TextAlign.end,
          ),
        )
      ],
    );
  }
}
