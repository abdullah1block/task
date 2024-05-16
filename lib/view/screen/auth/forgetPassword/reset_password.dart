import 'package:ecommerce_course/controller/auth/resetpassowrd_controller.dart';
import 'package:ecommerce_course/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/CustomButtonAuth.dart';
import '../../../widget/auth/CustomTextBodyAuth.dart';
import '../../../widget/auth/CustomTextTitleAuth.dart';
import '../../../widget/auth/customTextFormFieldAuth.dart';



class ResetPassword extends StatelessWidget {
  const  ResetPassword({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller=Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundColor,
        elevation: 0.0,
        title: Text(
          "Reset Passowrd",
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
             CustomTitleAuth(
              text: "35".tr,
            ),
            const SizedBox(
              height: 10,
            ),
             CustomTextBodyAuth(
              text: "35".tr,
            ),
            const SizedBox(
              height: 15,
            ),CustomFormAuth(
              isNumber: false,
              valid: (val){
                return validInput(val!, 5, 100, "password");
              },
              myController: controller.password,
              hintText: "13".tr,
              labelText: "19".tr,
              iconData: Icons.person_2_outlined,
            ),CustomFormAuth(
              isNumber: false,
              valid: (val){
                return validInput(val!, 5, 100, "password");

              },
              myController: controller.rePassword,
              hintText: "Re "+" ""13".tr,
              labelText: "19".tr,
              iconData: Icons.person_2_outlined,
            ),


            CustomButtonAuth(
              text: "33".tr,
              onPressed: () {
                controller.goToSuccess();
              },
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
