import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:store_all_things/my_import.dart';

class VerFiyCode extends StatelessWidget {
  const VerFiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerFiyCodeControllerImpController controller =
        Get.put(VerFiyCodeControllerImpController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "VerFictionCode",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppMyColor.grey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            //const LogAuth(),
            const SizedBox(
              height: 20,
            ),
            const CustomTextTitle(text: "Check Code"),
            const SizedBox(
              height: 10,
            ),
            const CustomTextTitleBody(
              text: " Please Enter  The Digit Code Sent To abd123@gmail.com",
            ),
            const SizedBox(
              height: 25,
            ),

            OtpTextField(
              fieldWidth: MediaQuery.of(context).size.width / 8,
              borderRadius: BorderRadius.circular(12),
              fillColor: Colors.red,
              cursorColor: Colors.red,
              disabledBorderColor: Colors.red,
              textStyle: const TextStyle(color: AppMyColor.primaryColor),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
                // showDialog(
                //     context: context,
                //     builder: (context) {
                //       return AlertDialog(
                //         title: Text("Verification Code"),
                //         content: Text('Code entered is $verificationCode'),
                //       );
                //     });
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
