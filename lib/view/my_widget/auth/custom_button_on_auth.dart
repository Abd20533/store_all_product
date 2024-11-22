import 'package:flutter/material.dart';
import 'package:store_all_things/core/constant/my_color.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppMyColor.primaryColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(50)),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.all(10),
        onPressed: onTap,
        //color: AppMyColor.blue,
        textColor: AppMyColor.black,
        child: Text(text),
      ),
    );
  }
}
