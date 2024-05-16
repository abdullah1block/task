
import 'package:ecommerce_course/controller/auth/verifycode_controller.dart';
import 'package:ecommerce_course/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../widget/auth/CustomTextBodyAuth.dart';
import '../../../widget/auth/CustomTextTitleAuth.dart';



class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      VerifyCodeController controller = Get.put( VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundColor,
        elevation: 0.0,
        title: Text(
          "Verification Code",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(height: 40,),
            const CustomTitleAuth(
              text: "Check Code",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextBodyAuth(
              text: "Please Enter The Digit Code That Has Been Sent ",
            ),
            const SizedBox(
              height: 15,
            ),
            OtpTextField(
                borderRadius: BorderRadius.circular(20,),
                fieldWidth: 50,
                numberOfFields: 5,
                borderColor: const Color(0xFF512DA8),
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                //rns when every text field is filled
                onSubmit: (String verifyCode){
                  controller.goToResetPassword();
                }
            ),

            const SizedBox(
              height: 40,
            ),

          ],
        ),
      ),
    );
  }
}
