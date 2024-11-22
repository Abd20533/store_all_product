import 'package:flutter/material.dart';
import 'package:store_all_things/core/constant/my_color.dart';

class CustomButtonLanguage extends StatelessWidget {
  const CustomButtonLanguage({super.key, required this.textButton, this.onTab});
  final String textButton;
  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onTab,
        color: AppMyColor.primaryColor,
        textColor: Colors.white,
        child: Text(
          textButton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
