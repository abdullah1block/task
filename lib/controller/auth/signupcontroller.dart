import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();
}

class  SignUpControllerImp extends SignUpController{
  GlobalKey<FormState> formstate=GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signUp() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verifyCodeSign);
    } else {
      print("Not Valid");
    }


  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
  @override
  void onInit() {

    username=TextEditingController();
    email=TextEditingController();
    phone=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();

    super.dispose();

  }

}