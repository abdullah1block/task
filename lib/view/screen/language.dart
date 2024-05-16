import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:ecommerce_course/core/localization/changedlocal.dart';
import 'package:ecommerce_course/view/widget/language/CustomButtonLang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style:Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 20,),
            CustomButtonLang(bttnText: "ar", onPressed:(){
              controller.changeLang("ar");
              Get.offNamed(AppRoute.onBoarding);
            }),
            CustomButtonLang(bttnText: "en", onPressed:(){
              controller.changeLang("en");
              Get.offNamed(AppRoute.onBoarding);
            })
          ],
        ),
      ),
    );
  }
}
