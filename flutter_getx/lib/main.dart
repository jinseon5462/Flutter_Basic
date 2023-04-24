import 'package:flutter/material.dart';
import 'package:flutter_getx/bind/init_bind.dart';
import 'package:flutter_getx/common/color_schemes.g.dart';
import 'package:flutter_getx/common/translations_info.dart';
import 'package:flutter_getx/route/route_info.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteInfo.routeRoot,
      initialBinding: InitBind(),
      defaultTransition: Transition.cupertino,
      getPages: RouteInfo.pages,
      translations: TranslationsInfo(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale("en", "US"),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
        fontFamily: "NotoSansKR",
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
        fontFamily: "NotoSansKR",
      ),
    );
  }
}
