import 'package:ecommerce_course/controller/auth/successsignup_controller.dart';
import 'package:ecommerce_course/core/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/CustomButtonAuth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignControllerImp controller=Get.put(SuccessSignControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGroundColor,
        elevation: 0.0,
        title: Text(
          '32'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child:  Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
             Text('37'.tr),
             Text('38'.tr),
            const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "31 ".tr,
                onPressed: () {
                 controller.goToLogin();
                },
              ),
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
