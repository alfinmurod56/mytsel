import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "My Telkomesel",
    //   initialRoute: Routes.HOME,
    //   getPages: AppPages.routes,
    // );
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "My Telkomesel",
              initialRoute: Routes.LOGIN,
              getPages: AppPages.routes,
            );
          }
        });
  }
}
