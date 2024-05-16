import 'package:ecommerce_course/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce_course/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/CustomButtonAuth.dart';
import '../../../widget/auth/CustomTextBodyAuth.dart';
import '../../../widget/auth/CustomTextTitleAuth.dart';
import '../../../widget/auth/customTextFormFieldAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundColor,
        elevation: 0.0,
        title: Text('14'.tr,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTitleAuth(text: "27".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(text: "29".tr),
          const SizedBox(height: 15),
          CustomFormAuth(
            isNumber: false,
            valid: (val){
              return validInput(val!, 5, 100, "email");

            },
            myController: controller.email,
            hintText: "12".tr,
            iconData: Icons.email_outlined,
            labelText: "18".tr,
          ),
          CustomButtonAuth(
            onPressed: () {
              controller.goToVerify();
            },
            text: "30".tr,
          ),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}
