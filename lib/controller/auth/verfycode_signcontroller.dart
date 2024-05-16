import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignController extends GetxController{
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignControllerImp extends VerifyCodeSignController{
  late String verifyCode;


  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
  @override
  void onInit() {

    super.onInit();
  }


}