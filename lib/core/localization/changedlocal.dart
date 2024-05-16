
import 'package:ecommerce_course/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/appTheme.dart';

class LocaleController extends GetxController{

  Locale? language;
  MyServices myServices=Get.find();

  ThemeData appTheme=themeEnglish;
  
  changeLang(String codeLang){
    Locale locale=Locale(codeLang);
    myServices.sharedPreferences.setString("lang", codeLang);
    appTheme=codeLang=="ar"?themeArabic:themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }
  
  @override
  void onInit() {
    String? sharedPrefLang=myServices.sharedPreferences.getString("lang");
    if(sharedPrefLang=="ar"){
      language=const Locale("ar");
      appTheme=themeArabic;
    }    
    else if(sharedPrefLang=="en"){
      language=const Locale("en");
      appTheme=themeEnglish;
    }
    else{
      language=Locale(Get.deviceLocale!.languageCode);
      appTheme=themeEnglish;
    }
    super.onInit();
        
  }

}