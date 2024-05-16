import 'package:ecommerce_course/controller/auth/signupcontroller.dart';
import 'package:ecommerce_course/core/constants/color.dart';
import 'package:ecommerce_course/core/functions/validinput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/CustomButtonAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/customTextFormFieldAuth.dart';
import '../../widget/auth/textsignup.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundColor,
        elevation: 0.0,
        title: Text(
          "17".tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body:GetBuilder<SignUpControllerImp>( builder: (controller)=> Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomTitleAuth(
                text: "10".tr,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                text: "24".tr,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomFormAuth(
                isNumber: false,
                valid: (val){
                  return validInput(val!, 5, 10, "username");

                },
                myController: controller.username,
                hintText: "23".tr,
                labelText: "20".tr,
                iconData: Icons.person_2_outlined,
              ),
              CustomFormAuth(
                isNumber: false,
                valid: (val){
                  return validInput(val!, 3, 20,"email");

                },
                myController: controller.email,
                hintText: "12".tr,
                labelText: "18".tr,
                iconData: Icons.email_outlined,
              ),
              CustomFormAuth(
                isNumber: true,
                valid: (val){
                  return validInput(val!, 7, 11,"phone");

                },
                myController: controller.phone,
                hintText: "22".tr,
                labelText: "21".tr,
                iconData: Icons.phone_android_outlined,
              ),
              CustomFormAuth(
                isNumber: false,
                valid: (val){
                  return validInput(val!, 5, 50,"password");

                },
                myController: controller.password,
                hintText: "13".tr,
                labelText: "19".tr,
                iconData: Icons.lock_clock_outlined,
              ),
              CustomButtonAuth(
                text: "17".tr,
                onPressed: () {
                  controller.signUp();
                },
              ),
              const SizedBox(
                height: 30,
              ),

              CustomTextSignUpOrSignIn(
                  onTap: () {
                    controller.goToSignIn();
                  },
                  text1: "25".tr ,
                  text2: "26".tr),
            ],
          ),
        ),
      ),),
    );
  }
}
