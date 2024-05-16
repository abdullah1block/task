import 'package:ecommerce_course/core/constants/routes.dart';
import 'package:ecommerce_course/core/middleware/mymiddleware.dart';
import 'package:ecommerce_course/view/screen/auth/forgetPassword/forget_password.dart';
import 'package:ecommerce_course/view/screen/auth/forgetPassword/reset_password.dart';
import 'package:ecommerce_course/view/screen/auth/signup.dart';
import 'package:ecommerce_course/view/screen/auth/login.dart';
import 'package:ecommerce_course/view/screen/auth/forgetPassword/successResetPassword.dart';
import 'package:ecommerce_course/view/screen/auth/success_signup.dart';
import 'package:ecommerce_course/view/screen/auth/forgetPassword/verifyCode.dart';
import 'package:ecommerce_course/view/screen/auth/verfycode_sign.dart';
import 'package:ecommerce_course/view/screen/language.dart';
import 'package:ecommerce_course/view/screen/onboarding.dart';

import 'package:get/get.dart';
List<GetPage<dynamic>>?routes=[
  GetPage(name: "/", page:()=> const Language(),middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login, page:()=> const LogIn()),
  GetPage(name: AppRoute.onBoarding, page:()=> const OnBoarding()),
  GetPage(name:  AppRoute.signUp, page:()=> const SignUp()),
  GetPage(name:  AppRoute.forgetPassword, page:()=>const ForgetPassword()),
  GetPage(name:  AppRoute.verifyCode, page:()=> const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page:()=>const ResetPassword()),
  GetPage(name:  AppRoute.successSignUp, page:()=>const SuccessSignUp()),
  GetPage(name:  AppRoute.successResetPassword, page:()=>const SuccessResetPassword()),
  GetPage(name: AppRoute.verifyCodeSign, page:()=>const VerifyCodeSign()),


];



