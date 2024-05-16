import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  resetPassword();
  goToSuccess();
}

class ResetPasswordControllerImp extends ResetPasswordController{
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> formState=GlobalKey<FormState>();

  @override
  resetPassword() {
    var formData=formState.currentState;
    if(formData!.validate()){
      print(" valid");
    }
    else {
      print("not valid");
    }
  }

  @override
  goToSuccess() {
    Get.offNamed(AppRoute.successResetPassword);
  }
  @override
  void onInit() {
    password=TextEditingController();
    rePassword=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

}