import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:ecommerce_course/view/widget/onboarding/customslider.dart';
import 'package:ecommerce_course/view/widget/onboarding/dotController.dart';
import 'package:ecommerce_course/view/widget/onboarding/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerOnBoarding(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonOnBoarding(),
                ],
              ),
            )
          ],
         ),
      ),
    );
  }
}
