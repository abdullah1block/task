import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignController extends GetxController{
  goToLogin();
}
class SuccessSignControllerImp extends SuccessSignController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }

}