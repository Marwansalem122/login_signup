import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:login_signup/auth_controller.dart';
import 'package:login_signup/homepage.dart';
import 'package:login_signup/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_signup/signup_page.dart';

import 'firebase_options.dart';


void main()async{
  final MaterialColor customPrimarySwatch = MaterialColor(0xffff6633, <int, Color>{
    50: Color(0xffff6633),
    100: Color(0xffff6633),
    200: Color(0xffff6633),
    300: Color(0xffff6633),
    400: Color(0xffff6633),
    500: Color(0xffff6633),
    600: Color(0xffff6633),
    700: Color(0xffff6633),
    800: Color(0xffff6633),
    900: Color(0xffff6633),//https://github.com/Marwansalem122/login-signup-firebase.git
  });
   WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch:customPrimarySwatch
    ),
    debugShowCheckedModeBanner: false,
     home: LoginPage(),
  ));
   FlutterNativeSplash.remove();
}
