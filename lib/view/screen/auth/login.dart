import 'package:ecommerce_course/core/constants/color.dart';
import 'package:ecommerce_course/core/functions/alertexitapp.dart';
import 'package:ecommerce_course/core/functions/validinput.dart';
import 'package:ecommerce_course/view/widget/auth/logoAuth.dart';
import 'package:ecommerce_course/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/logincontroller.dart';
import '../../widget/auth/CustomButtonAuth.dart';
import '../../widget/auth/CustomTextBodyAuth.dart';
import '../../widget/auth/CustomTextTitleAuth.dart';
import '../../widget/auth/customTextFormFieldAuth.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundColor,
        elevation: 0.0,
        title: Text(
          '9'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const LogoAuth(),
                CustomTitleAuth(
                  text: "10".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextBodyAuth(
                  text: "11".tr,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  myController: controller.email,
                  hintText: "12".tr, labelText: "18".tr,
                  iconData: Icons.email_outlined,
                  //myController:,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller)=> CustomFormAuth(
                    isNumber: true,
                    onTapIcon: (){
                      controller.showPassword();
                    },
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    obSecTxt: controller.isShowPass,
                    myController: controller.password,
                    hintText: "13".tr, labelText: "19".tr,
                    iconData: Icons.lock_clock_outlined,
                    //myController:,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForget();
                  },
                  child: Text(
                    "14".tr,
                    textAlign: TextAlign.end,
                  ),
                ),
                CustomButtonAuth(
                  text: "15".tr,
                  onPressed: () {
                    controller.login();
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextSignUpOrSignIn(
                    onTap: () {
                      controller.goToSignUp();
                    },
                    text1: "16".tr,
                    text2: "17".tr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
