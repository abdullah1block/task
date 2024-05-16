import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVerify();
}
class ForgetPasswordControllerImp extends ForgetPasswordController{
  late TextEditingController email;
  GlobalKey<FormState> formState=GlobalKey<FormState>();
  @override
  checkEmail() {
    var formData=formState.currentState;
    if(formData!.validate()){
      print(" valid");
    }
    else {
      print("not valid");
    }

  }

  @override
  goToVerify() {
    Get.toNamed(AppRoute.verifyCode);

  }

  @override
  void onInit() {
    email=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }



}