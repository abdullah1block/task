import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController{
 late String verifyCode;


  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }
  @override
  void onInit() {

    super.onInit();
  }


}