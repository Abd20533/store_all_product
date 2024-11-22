import 'package:flutter/material.dart';
import 'package:store_all_things/core/constant/my_color.dart';

class CustomTextTitleBody extends StatelessWidget {
  const CustomTextTitleBody({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: AppMyColor.grey.withOpacity(0.7)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
