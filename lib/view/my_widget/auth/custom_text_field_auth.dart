import 'package:flutter/material.dart';
import 'package:store_all_things/core/constant/my_color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.iconData,
      required this.myController,
      required this.valid,
      required this.typeTextInputType,
      this.obscureText = false,
      this.myOnTabIcon,
      this.obscureTextSuffixIcon = false});
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextInputType typeTextInputType;
  final bool? obscureText;
  final bool? obscureTextSuffixIcon;
  final TextEditingController myController;
  final String? Function(String?) valid;
  final String? Function()? myOnTabIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
      child: TextFormField(
        obscureText: (!obscureText! || (obscureText == false)) ? false : true,
        keyboardType: typeTextInputType,
        autovalidateMode: AutovalidateMode.always,
        validator: valid,
        textAlignVertical: TextAlignVertical.top,
        controller: myController,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(
                color: AppMyColor.blue, // <-- تغيير اللون هنا
                width: 2, // <-- يمكنك تغيير عرض الحد أيضًا
              )),
          hoverColor: Colors.blue,

          fillColor:
              AppMyColor.primaryColor.withOpacity(0.2), //col.withOpacity(0.5),

          focusColor: Colors.blue,
          isDense: true,
          suffixIconColor: Colors.black,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          filled: true,

          hintText: hintText,
          label: Text(labelText),

          hintStyle: const TextStyle(
            fontSize: 12,
          ),
          hintFadeDuration: Durations.long1,
          labelStyle: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 12),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(
                color: Colors.red,
                style: BorderStyle.solid,
                width: 1, // <-- يمكنك تغيير عرض الحد أيضًا
              )),

          errorStyle: TextStyle(color: Colors.red.shade300, fontSize: 10),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                style: BorderStyle.solid,
                color: Colors.black45,
                width: 1,
              )),

          errorMaxLines: 1,

          suffixIcon: obscureTextSuffixIcon! == true
              ? IconButton(
                  onPressed: myOnTabIcon,
                  icon: Icon(
                    iconData,
                    color: Colors.black,
                  ),
                )
              : Icon(
                  iconData,
                  color: Colors.black,
                ),

          border: OutlineInputBorder(
            borderSide: const BorderSide(
                style: BorderStyle.solid, width: 5, color: Colors.black),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}

// Widget customTextFormField444({
//   required TextEditingController controller,
//   required TextInputType type,
//   required String title,
//   Color col = Colors.white,
//   IconData icon = Icons.import_export,
//   required String validationType,
//   required double borderRadiusCircular,
//   //required FormFieldValidator validationType1,
// }) {
//   return Material(
//     child: TextFormField(
//       onFieldSubmitted: (value) {},
//       onChanged: (value) {},
//       validator: (value) {
//         return validate(value!, validationType);
//       },
//       controller: controller,
//       keyboardType: type,
//       decoration: InputDecoration(
//         focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadiusCircular),
//             borderSide: const BorderSide(
//               color: Colors.green, // <-- تغيير اللون هنا
//               width: 2, // <-- يمكنك تغيير عرض الحد أيضًا
//             )),
//         focusedErrorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadiusCircular),
//             borderSide: const BorderSide(
//               color: Colors.red,
//               style: BorderStyle.solid,
//               width: 2, // <-- يمكنك تغيير عرض الحد أيضًا
//             )),
//
//         isDense: true,
//         suffixIconColor: Colors.black,
//         fillColor: AppMyColor.primaryColor.withOpacity(0.5),
//
//         contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
//         filled: true,
//         // fillColor: Colors.green, //col.withOpacity(0.5),
//         hintStyle: const TextStyle(color: Colors.green, fontSize: 34),
//         labelStyle: const TextStyle(
//             // decorationColor: Colors.white,
//             //decoration: TextDecoration.underline,
//             color: Colors.black38,
//             fontWeight: FontWeight.w300,
//             fontSize: 13),
//         // errorText: "there are problem",
//         errorStyle: TextStyle(color: Colors.red.shade300, fontSize: 10),
//         errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(borderRadiusCircular),
//             borderSide: const BorderSide(
//               style: BorderStyle.none,
//               color: Colors.black45,
//               width: 1,
//             )),
//         errorMaxLines: 1,
//         labelText: title,
//         hoverColor: Colors.green,
//         focusColor: Colors.green,
//
//         border: OutlineInputBorder(
//           borderSide:
//               const BorderSide(style: BorderStyle.solid, color: Colors.green),
//           borderRadius: BorderRadius.circular(borderRadiusCircular),
//         ),
//       ),
//     ),
//   );
// }
