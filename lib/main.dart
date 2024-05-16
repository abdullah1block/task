import 'package:ecommerce_course/core/localization/changedlocal.dart';
import 'package:ecommerce_course/core/localization/translation.dart';
import 'package:ecommerce_course/core/services/services.dart';
import 'package:ecommerce_course/routes.dart';
import 'package:ecommerce_course/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initailServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      title: 'Flutter Demo',
      locale: controller.language,
      theme:controller.appTheme,
      getPages: routes,
    );
  }
}
