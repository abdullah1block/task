import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
  goToForget();
}
class LoginControllerImp extends LoginController {

  GlobalKey<FormState> formstate=GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;


   bool isShowPass=true;
   showPassword(){
     isShowPass=!isShowPass;
     update();
   }

  @override
  login() {
    var formdata=formstate.currentState;
    if(formdata!.validate()){
      print(" valid");
    }
    else {
      print("not valid");
    }

  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForget() {
    Get.toNamed(AppRoute.forgetPassword);
  }

}