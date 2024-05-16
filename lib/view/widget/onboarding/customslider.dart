import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/color.dart';
import '../../../data/dataSource/static/static.dart';
class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value){
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
          color: AppColor.black
      ),
          ),
          const SizedBox(height: 80.0),
          Image.asset(
            onBoardingList[i].image!,
            width: 200,
            height: 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 30.0),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style:const TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
